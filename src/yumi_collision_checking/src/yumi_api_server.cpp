#include "collision_checking_yumi.h"
#include "h5_io.h"
#include "KDL_FK_Solver.h"
#include "yumi_collision_checking/yumi_execute.h"
#include "yumi_collision_checking/yumi_executeRequest.h"
#include "yumi_collision_checking/yumi_executeResponse.h"

void read_state_from_h5(std::string h5_name, std::string group_name, int64_t t, 
        std::vector<double> &x_next, std::vector<double> &Q_next )
    {
        std::vector<std::vector<double>> l_elbow = read_h5(h5_name,group_name,"l_elbow");
        std::vector<std::vector<double>> r_elbow = read_h5(h5_name,group_name,"r_elbow");
        std::vector<std::vector<double>> l_wrist = read_h5(h5_name,group_name,"l_wrist");
        std::vector<std::vector<double>> r_wrist = read_h5(h5_name,group_name,"r_wrist");
        std::vector<std::vector<double>> l_joint_angle = read_h5(h5_name,group_name,"l_joint_angle");
        std::vector<std::vector<double>> r_joint_angle = read_h5(h5_name,group_name,"r_joint_angle");
        std::vector<std::vector<double>> l_glove_angle = read_h5(h5_name,group_name,"l_glove_angle");
        std::vector<std::vector<double>> r_glove_angle = read_h5(h5_name,group_name,"r_glove_angle");
        for(auto xx: l_elbow[t+1]) x_next.push_back(xx);
        for(auto xx: r_elbow[t+1]) x_next.push_back(xx);
        for(auto xx: l_wrist[t+1]) x_next.push_back(xx);
        for(auto xx: r_wrist[t+1]) x_next.push_back(xx);
        for(auto xx: l_joint_angle[t+1]) Q_next.push_back(xx);
        for(auto xx: r_joint_angle[t+1]) Q_next.push_back(xx);
        for(auto xx: l_glove_angle[t+1]) Q_next.push_back(xx);
        for(auto xx: r_glove_angle[t+1]) Q_next.push_back(xx);
        return;
    }

class YumiApiServer
{
    public:
        boost::shared_ptr<DualArmDualHandCollision> collisionCheckingPtr;  
        std::string h5_name = "/home/liweijie/projects/sl-rl-motion-retargeting-ws/mocap_data_YuMi_affine_execute.h5";
        KDL_FK_Solver fk_solver;
        KDL::ChainFkSolverPos_recursive left_fk_solver = fk_solver.setup_left_kdl();
        KDL::ChainFkSolverPos_recursive right_fk_solver = fk_solver.setup_right_kdl();
        // 构造函数
        YumiApiServer(std::string urdf_string, std::string srdf_string){
            collisionCheckingPtr.reset( new DualArmDualHandCollision(urdf_string, srdf_string) );
        }

        double reset(){
            return 0.0;
        }

        double move(std::vector<double> Qt){
            collisionCheckingPtr->set_joint_values_yumi(Qt);
            double if_collide = collisionCheckingPtr->check_self_collision(Qt);
            return if_collide;
        }

        std::vector<double> calculate_ee_pose(std::vector<double> Qt) {
            std::vector<double> q_left_arm(Qt.begin(), Qt.begin()+7); //(7); 
            std::vector<double> q_right_arm(Qt.begin()+7, Qt.begin()+14); //(7);
            Matrix<double, 7, 1> q_left(q_left_arm.data());
            Matrix<double, 7, 1> q_right(q_right_arm.data());
            Vector3d l_wrist_pos = fk_solver.return_wrist_pos(left_fk_solver, q_left, true);
            Vector3d r_wrist_pos = fk_solver.return_wrist_pos(right_fk_solver, q_right, false);
            Vector3d l_elbow_pos = fk_solver.return_elbow_pos(left_fk_solver, q_left, true);
            Vector3d r_elbow_pos = fk_solver.return_elbow_pos(right_fk_solver, q_right, false);
            Matrix3d l_elbow_rot = fk_solver.return_ori(left_fk_solver,q_left,fk_solver.l_num_elbow_seg);
            Matrix3d r_elbow_rot = fk_solver.return_ori(right_fk_solver,q_right,fk_solver.r_num_elbow_seg);
            Matrix3d l_wrist_rot = fk_solver.return_wrist_ori(left_fk_solver, q_left, true);
            Matrix3d r_wrist_rot = fk_solver.return_wrist_ori(right_fk_solver, q_right, false);
            Quaterniond l_elbow_quat(l_elbow_rot);
            Quaterniond l_wrist_quat(l_wrist_rot);
            Quaterniond r_elbow_quat(r_elbow_rot);
            Quaterniond r_wrist_quat(r_wrist_rot);
            std::vector<double> xt(4*7);
            xt[0] = l_elbow_pos.x();xt[1] = l_elbow_pos.y();xt[2] = l_elbow_pos.z();xt[3] = l_elbow_quat.x();xt[4] = l_elbow_quat.y();xt[5] = l_elbow_quat.z();xt[6] = l_elbow_quat.w();
            xt[7] = r_elbow_pos.x();xt[8] = r_elbow_pos.y();xt[9] = r_elbow_pos.z();xt[10] = r_elbow_quat.x();xt[11] = r_elbow_quat.y();xt[12] = r_elbow_quat.z();xt[13] = r_elbow_quat.w();
            xt[14] = l_wrist_pos.x();xt[15] = l_wrist_pos.y();xt[16] = l_wrist_pos.z();xt[17] = l_wrist_quat.x();xt[18] = l_wrist_quat.y();xt[19] = l_wrist_quat.z();xt[20] = l_wrist_quat.w();
            xt[21] = r_wrist_pos.x();xt[22] = r_wrist_pos.y();xt[23] = r_wrist_pos.z();xt[24] = r_wrist_quat.x();xt[25] = r_wrist_quat.y();xt[26] = r_wrist_quat.z();xt[27] = r_wrist_quat.w();
           return xt;
        }

        bool callback(yumi_collision_checking::yumi_execute::Request& request, yumi_collision_checking::yumi_execute::Response& response)
        {
            double if_collide;
            std::vector<double> Vt_hat = request.Vt_hat;
            std::vector<double> Qtt_hat = request.Qtt_hat;
            std::vector<double> Qt_hat(Vt_hat.size());
            double dt = 1.0/15.0;
            for (int i = 0; i < Vt_hat.size(); i++)
            {
                Qt_hat[i] = Qtt_hat[i]+Vt_hat[i]*dt; 
            }
            std::string group_name = request.group_name;
            int64_t t = request.t;
            std::vector<double> xt;
            std::vector<double> Qt;
            std::vector<double> x_next;
            std::vector<double> Q_next;
            std::vector<double> xt_hat;
            if (request.command == "reset")
            {
                // Reset
                if_collide = reset();
                // Get next state
                read_state_from_h5(h5_name,group_name,0,xt,Qt);
                read_state_from_h5(h5_name,group_name,0,x_next,Q_next);
                Qt_hat = Qt;
            }
            else if(request.command == "move")
            {
                // Move
                if_collide = move(Qt_hat);
                 // Get next state
                read_state_from_h5(h5_name,group_name,t-1,xt,Qt);
                read_state_from_h5(h5_name,group_name,t,x_next,Q_next);
            }
            xt_hat = calculate_ee_pose(Qt_hat);
            // Construct response
            response.xt_hat = xt_hat;
            response.Qt_hat = Qt_hat;
            response.xt = xt;
            response.Qt = Qt;
            response.x_next = x_next;
            response.Q_next = Q_next;
            response.if_collide = if_collide;
            return true;
        }
};


int main(int argc, char **argv)
{
    // Path config
    std::string urdf_file_name = "/home/liweijie/projects/sl-rl-motion-retargeting-ws/yumi_with_hands.urdf";
    std::string srdf_file_name = "/home/liweijie/projects/sl-rl-motion-retargeting-ws/src/yumi_sign_language_robot_moveit_config/config/yumi.srdf";
    std::stringstream urdf_string = read_file(urdf_file_name);
    std::stringstream srdf_string = read_file(srdf_file_name);
    // Initialize a ROS node (or creating NodeHandle later)
    ros::init(argc, argv, "yumi_api_server");
    ros::NodeHandle nh;
    YumiApiServer yumi_api_server(urdf_string.str(),srdf_string.str());
    ros::ServiceServer server =  nh.advertiseService("yumi_api_server/apis",&YumiApiServer::callback,&yumi_api_server);
    ros::spin();

}