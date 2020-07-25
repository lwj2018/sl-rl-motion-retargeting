// Generated by gencpp from file inspire_hand/set_pos.msg
// DO NOT EDIT!


#ifndef INSPIRE_HAND_MESSAGE_SET_POS_H
#define INSPIRE_HAND_MESSAGE_SET_POS_H

#include <ros/service_traits.h>


#include <inspire_hand/set_posRequest.h>
#include <inspire_hand/set_posResponse.h>


namespace inspire_hand
{

struct set_pos
{

typedef set_posRequest Request;
typedef set_posResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct set_pos
} // namespace inspire_hand


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::inspire_hand::set_pos > {
  static const char* value()
  {
    return "469bce018568d1f214a0c5f75e89bf97";
  }

  static const char* value(const ::inspire_hand::set_pos&) { return value(); }
};

template<>
struct DataType< ::inspire_hand::set_pos > {
  static const char* value()
  {
    return "inspire_hand/set_pos";
  }

  static const char* value(const ::inspire_hand::set_pos&) { return value(); }
};


// service_traits::MD5Sum< ::inspire_hand::set_posRequest> should match 
// service_traits::MD5Sum< ::inspire_hand::set_pos > 
template<>
struct MD5Sum< ::inspire_hand::set_posRequest>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::set_pos >::value();
  }
  static const char* value(const ::inspire_hand::set_posRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::set_posRequest> should match 
// service_traits::DataType< ::inspire_hand::set_pos > 
template<>
struct DataType< ::inspire_hand::set_posRequest>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::set_pos >::value();
  }
  static const char* value(const ::inspire_hand::set_posRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::inspire_hand::set_posResponse> should match 
// service_traits::MD5Sum< ::inspire_hand::set_pos > 
template<>
struct MD5Sum< ::inspire_hand::set_posResponse>
{
  static const char* value()
  {
    return MD5Sum< ::inspire_hand::set_pos >::value();
  }
  static const char* value(const ::inspire_hand::set_posResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::inspire_hand::set_posResponse> should match 
// service_traits::DataType< ::inspire_hand::set_pos > 
template<>
struct DataType< ::inspire_hand::set_posResponse>
{
  static const char* value()
  {
    return DataType< ::inspire_hand::set_pos >::value();
  }
  static const char* value(const ::inspire_hand::set_posResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // INSPIRE_HAND_MESSAGE_SET_POS_H
