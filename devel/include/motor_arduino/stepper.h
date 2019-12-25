// Generated by gencpp from file motor_arduino/stepper.msg
// DO NOT EDIT!


#ifndef MOTOR_ARDUINO_MESSAGE_STEPPER_H
#define MOTOR_ARDUINO_MESSAGE_STEPPER_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace motor_arduino
{
template <class ContainerAllocator>
struct stepper_
{
  typedef stepper_<ContainerAllocator> Type;

  stepper_()
    : stepper_number(0)
    , stepper_direction(false)
    , stepper_count(0)  {
    }
  stepper_(const ContainerAllocator& _alloc)
    : stepper_number(0)
    , stepper_direction(false)
    , stepper_count(0)  {
  (void)_alloc;
    }



   typedef int16_t _stepper_number_type;
  _stepper_number_type stepper_number;

   typedef uint8_t _stepper_direction_type;
  _stepper_direction_type stepper_direction;

   typedef int16_t _stepper_count_type;
  _stepper_count_type stepper_count;





  typedef boost::shared_ptr< ::motor_arduino::stepper_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::motor_arduino::stepper_<ContainerAllocator> const> ConstPtr;

}; // struct stepper_

typedef ::motor_arduino::stepper_<std::allocator<void> > stepper;

typedef boost::shared_ptr< ::motor_arduino::stepper > stepperPtr;
typedef boost::shared_ptr< ::motor_arduino::stepper const> stepperConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::motor_arduino::stepper_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::motor_arduino::stepper_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace motor_arduino

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'motor_arduino': ['/home/zhong/Sensor/src/motor_arduino/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::motor_arduino::stepper_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::motor_arduino::stepper_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motor_arduino::stepper_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::motor_arduino::stepper_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motor_arduino::stepper_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::motor_arduino::stepper_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::motor_arduino::stepper_<ContainerAllocator> >
{
  static const char* value()
  {
    return "418c9f364f01d80c862df03ea60e9515";
  }

  static const char* value(const ::motor_arduino::stepper_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x418c9f364f01d80cULL;
  static const uint64_t static_value2 = 0x862df03ea60e9515ULL;
};

template<class ContainerAllocator>
struct DataType< ::motor_arduino::stepper_<ContainerAllocator> >
{
  static const char* value()
  {
    return "motor_arduino/stepper";
  }

  static const char* value(const ::motor_arduino::stepper_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::motor_arduino::stepper_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 stepper_number\n\
bool stepper_direction\n\
int16 stepper_count\n\
";
  }

  static const char* value(const ::motor_arduino::stepper_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::motor_arduino::stepper_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.stepper_number);
      stream.next(m.stepper_direction);
      stream.next(m.stepper_count);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct stepper_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::motor_arduino::stepper_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::motor_arduino::stepper_<ContainerAllocator>& v)
  {
    s << indent << "stepper_number: ";
    Printer<int16_t>::stream(s, indent + "  ", v.stepper_number);
    s << indent << "stepper_direction: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.stepper_direction);
    s << indent << "stepper_count: ";
    Printer<int16_t>::stream(s, indent + "  ", v.stepper_count);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MOTOR_ARDUINO_MESSAGE_STEPPER_H
