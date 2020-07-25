// Generated by gencpp from file inspire_hand/get_force_set.msg
// DO NOT EDIT!


#ifndef INSPIRE_HAND_MESSAGE_GET_FORCE_SET_H
#define INSPIRE_HAND_MESSAGE_GET_FORCE_SET_H

#include <ros/service_traits.h>


#include <inspire_hand/get_force_setRequest.h>
#include <inspire_hand/get_force_setResponse.h>


namespace inspire_hand
{

struct get_force_set
{

typedef get_force_setRequest Request;
typedef get_force_setResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct get_force_set
} // namespace inspire_hand


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inspire_hand::get_force_set > {
  static const char* value()
  {
    return "36dc498fde31a7d3735606fe581fda5c";
  }

  static const char* value(const ::inspire_hand::get_force_set&) { return value(); }
};

template<>
struct DataType< ::inspire_hand::get_force_set > {
  static const char* value()
  {
    return "inspire_hand/get_force_set";
  }

  static const char* value(const ::inspire_hand::get_force_set&) { return value(); }
};


// service_traits::MD5Sum< ::inspire_hand::get_force_setRequest> should match 
// service_traits::MD5Sum< ::inspire_hand::get_force_set > 
template<>
struct MD5Sum< ::inspire_hand::get_force_setRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::get_force_set >::value();
  }
  static const char* value(const ::inspire_hand::get_force_setRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::get_force_setRequest> should match 
// service_traits::DataType< ::inspire_hand::get_force_set > 
template<>
struct DataType< ::inspire_hand::get_force_setRequest>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::get_force_set >::value();
  }
  static const char* value(const ::inspire_hand::get_force_setRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inspire_hand::get_force_setResponse> should match 
// service_traits::MD5Sum< ::inspire_hand::get_force_set > 
template<>
struct MD5Sum< ::inspire_hand::get_force_setResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::get_force_set >::value();
  }
  static const char* value(const ::inspire_hand::get_force_setResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::get_force_setResponse> should match 
// service_traits::DataType< ::inspire_hand::get_force_set > 
template<>
struct DataType< ::inspire_hand::get_force_setResponse>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::get_force_set >::value();
  }
  static const char* value(const ::inspire_hand::get_force_setResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INSPIRE_HAND_MESSAGE_GET_FORCE_SET_H
