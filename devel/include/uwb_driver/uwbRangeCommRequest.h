// Generated by gencpp from file uwb_driver/uwbRangeCommRequest.msg
// DO NOT EDIT!


#ifndef UWB_DRIVER_MESSAGE_UWBRANGECOMMREQUEST_H
#define UWB_DRIVER_MESSAGE_UWBRANGECOMMREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace uwb_driver
{
template <class ContainerAllocator>
struct uwbRangeCommRequest_
{
  typedef uwbRangeCommRequest_<ContainerAllocator> Type;

  uwbRangeCommRequest_()
    : action(0)
    , responder(0)
    , antenna(0)
    , channel(0)
    , data_size(0)
    , data()  {
    }
  uwbRangeCommRequest_(const ContainerAllocator& _alloc)
    : action(0)
    , responder(0)
    , antenna(0)
    , channel(0)
    , data_size(0)
    , data(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _action_type;
  _action_type action;

   typedef uint8_t _responder_type;
  _responder_type responder;

   typedef uint8_t _antenna_type;
  _antenna_type antenna;

   typedef uint8_t _channel_type;
  _channel_type channel;

   typedef uint16_t _data_size_type;
  _data_size_type data_size;

   typedef std::vector<uint8_t, typename ContainerAllocator::template rebind<uint8_t>::other >  _data_type;
  _data_type data;




  typedef boost::shared_ptr< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> const> ConstPtr;

}; // struct uwbRangeCommRequest_

typedef ::uwb_driver::uwbRangeCommRequest_<std::allocator<void> > uwbRangeCommRequest;

typedef boost::shared_ptr< ::uwb_driver::uwbRangeCommRequest > uwbRangeCommRequestPtr;
typedef boost::shared_ptr< ::uwb_driver::uwbRangeCommRequest const> uwbRangeCommRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace uwb_driver

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'uwb_driver': ['/home/xufang/pathcheck/src/uwb_driver/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "953d86283d0b1fd716c465aa92da7ecd";
  }

  static const char* value(const ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x953d86283d0b1fd7ULL;
  static const uint64_t static_value2 = 0x16c465aa92da7ecdULL;
};

template<class ContainerAllocator>
struct DataType< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uwb_driver/uwbRangeCommRequest";
  }

  static const char* value(const ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint8 action\n\
\n\
\n\
\n\
\n\
\n\
uint8 responder\n\
uint8 antenna\n\
uint8 channel\n\
uint16 data_size\n\
uint8[] data\n\
";
  }

  static const char* value(const ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action);
      stream.next(m.responder);
      stream.next(m.antenna);
      stream.next(m.channel);
      stream.next(m.data_size);
      stream.next(m.data);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct uwbRangeCommRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::uwb_driver::uwbRangeCommRequest_<ContainerAllocator>& v)
  {
    s << indent << "action: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.action);
    s << indent << "responder: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.responder);
    s << indent << "antenna: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.antenna);
    s << indent << "channel: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.channel);
    s << indent << "data_size: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.data_size);
    s << indent << "data[]" << std::endl;
    for (size_t i = 0; i < v.data.size(); ++i)
    {
      s << indent << "  data[" << i << "]: ";
      Printer<uint8_t>::stream(s, indent + "  ", v.data[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // UWB_DRIVER_MESSAGE_UWBRANGECOMMREQUEST_H