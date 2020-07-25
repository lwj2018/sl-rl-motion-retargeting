// Generated by gencpp from file inspire_hand/set_user_def_angle.msg
// DO NOT EDIT!


#ifndef INSPIRE_HAND_MESSAGE_SET_USER_DEF_ANGLE_H
#define INSPIRE_HAND_MESSAGE_SET_USER_DEF_ANGLE_H

#include <ros/service_traits.h>


#include <inspire_hand/set_user_def_angleRequest.h>
#include <inspire_hand/set_user_def_angleResponse.h>


namespace inspire_hand
{

struct set_user_def_angle
{

typedef set_user_def_angleRequest Request;
typedef set_user_def_angleResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_user_def_angle
} // namespace inspire_hand


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inspire_hand::set_user_def_angle > {
  static const char* value()
  {
    return "15586ac6795c92bb925e681bde9775c3";
  }

  static const char* value(const ::inspire_hand::set_user_def_angle&) { return value(); }
};

template<>
struct DataType< ::inspire_hand::set_user_def_angle > {
  static const char* value()
  {
    return "inspire_hand/set_user_def_angle";
  }

  static const char* value(const ::inspire_hand::set_user_def_angle&) { return value(); }
};


// service_traits::MD5Sum< ::inspire_hand::set_user_def_angleRequest> should match 
// service_traits::MD5Sum< ::inspire_hand::set_user_def_angle > 
template<>
struct MD5Sum< ::inspire_hand::set_user_def_angleRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::set_user_def_angle >::value();
  }
  static const char* value(const ::inspire_hand::set_user_def_angleRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::set_user_def_angleRequest> should match 
// service_traits::DataType< ::inspire_hand::set_user_def_angle > 
template<>
struct DataType< ::inspire_hand::set_user_def_angleRequest>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::set_user_def_angle >::value();
  }
  static const char* value(const ::inspire_hand::set_user_def_angleRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inspire_hand::set_user_def_angleResponse> should match 
// service_traits::MD5Sum< ::inspire_hand::set_user_def_angle > 
template<>
struct MD5Sum< ::inspire_hand::set_user_def_angleResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::set_user_def_angle >::value();
  }
  static const char* value(const ::inspire_hand::set_user_def_angleResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::set_user_def_angleResponse> should match 
// service_traits::DataType< ::inspire_hand::set_user_def_angle > 
template<>
struct DataType< ::inspire_hand::set_user_def_angleResponse>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::set_user_def_angle >::value();
  }
  static const char* value(const ::inspire_hand::set_user_def_angleResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INSPIRE_HAND_MESSAGE_SET_USER_DEF_ANGLE_H
