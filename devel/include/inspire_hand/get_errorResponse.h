// Generated by gencpp from file inspire_hand/get_errorResponse.msg
// DO NOT EDIT!


#ifndef INSPIRE_HAND_MESSAGE_GET_ERRORRESPONSE_H
#define INSPIRE_HAND_MESSAGE_GET_ERRORRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace inspire_hand
{
template <class ContainerAllocator>
struct get_errorResponse_
{
  typedef get_errorResponse_<ContainerAllocator> Type;

  get_errorResponse_()
    : errorvalue()  {
      errorvalue.assign(0.0);
  }
  get_errorResponse_(const ContainerAllocator& _alloc)
    : errorvalue()  {
  (void)_alloc;
      errorvalue.assign(0.0);
  }



   typedef boost::array<float, 6>  _errorvalue_type;
  _errorvalue_type errorvalue;





  typedef boost::shared_ptr< ::inspire_hand::get_errorResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::inspire_hand::get_errorResponse_<ContainerAllocator> const> ConstPtr;

}; // struct get_errorResponse_

typedef ::inspire_hand::get_errorResponse_<std::allocator<void> > get_errorResponse;

typedef boost::shared_ptr< ::inspire_hand::get_errorResponse > get_errorResponsePtr;
typedef boost::shared_ptr< ::inspire_hand::get_errorResponse const> get_errorResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::inspire_hand::get_errorResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::inspire_hand::get_errorResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace inspire_hand

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::inspire_hand::get_errorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::inspire_hand::get_errorResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::inspire_hand::get_errorResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a53f03f634bc27bd5924537063e03a53";
  }

  static const char* value(const ::inspire_hand::get_errorResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa53f03f634bc27bdULL;
  static const uint64_t static_value2 = 0x5924537063e03a53ULL;
};

template<class ContainerAllocator>
struct DataType< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "inspire_hand/get_errorResponse";
  }

  static const char* value(const ::inspire_hand::get_errorResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[6] errorvalue\n\
";
  }

  static const char* value(const ::inspire_hand::get_errorResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.errorvalue);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct get_errorResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::inspire_hand::get_errorResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::inspire_hand::get_errorResponse_<ContainerAllocator>& v)
  {
    s << indent << "errorvalue[]" << std::endl;
    for (size_t i = 0; i < v.errorvalue.size(); ++i)
    {
      s << indent << "  errorvalue[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.errorvalue[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // INSPIRE_HAND_MESSAGE_GET_ERRORRESPONSE_H
