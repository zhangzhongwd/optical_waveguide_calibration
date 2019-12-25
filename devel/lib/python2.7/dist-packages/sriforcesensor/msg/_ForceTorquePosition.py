# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from sriforcesensor/ForceTorquePosition.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class ForceTorquePosition(genpy.Message):
  _md5sum = "b109b108f2bbaf48766fe7d3d50d6ee5"
  _type = "sriforcesensor/ForceTorquePosition"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/Twist Forcevalue
std_msgs/Float64MultiArray Radius

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: std_msgs/Float64MultiArray
# Please look at the MultiArrayLayout message definition for
# documentation on all multiarrays.

MultiArrayLayout  layout        # specification of data layout
float64[]         data          # array of data


================================================================================
MSG: std_msgs/MultiArrayLayout
# The multiarray declares a generic multi-dimensional array of a
# particular data type.  Dimensions are ordered from outer most
# to inner most.

MultiArrayDimension[] dim # Array of dimension properties
uint32 data_offset        # padding elements at front of data

# Accessors should ALWAYS be written in terms of dimension stride
# and specified outer-most dimension first.
# 
# multiarray(i,j,k) = data[data_offset + dim_stride[1]*i + dim_stride[2]*j + k]
#
# A standard, 3-channel 640x480 image with interleaved color channels
# would be specified as:
#
# dim[0].label  = "height"
# dim[0].size   = 480
# dim[0].stride = 3*640*480 = 921600  (note dim[0] stride is just size of image)
# dim[1].label  = "width"
# dim[1].size   = 640
# dim[1].stride = 3*640 = 1920
# dim[2].label  = "channel"
# dim[2].size   = 3
# dim[2].stride = 3
#
# multiarray(i,j,k) refers to the ith row, jth column, and kth channel.

================================================================================
MSG: std_msgs/MultiArrayDimension
string label   # label of given dimension
uint32 size    # size of given dimension (in type units)
uint32 stride  # stride of given dimension"""
  __slots__ = ['Forcevalue','Radius']
  _slot_types = ['geometry_msgs/Twist','std_msgs/Float64MultiArray']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Forcevalue,Radius

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ForceTorquePosition, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Forcevalue is None:
        self.Forcevalue = geometry_msgs.msg.Twist()
      if self.Radius is None:
        self.Radius = std_msgs.msg.Float64MultiArray()
    else:
      self.Forcevalue = geometry_msgs.msg.Twist()
      self.Radius = std_msgs.msg.Float64MultiArray()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.Forcevalue.linear.x, _x.Forcevalue.linear.y, _x.Forcevalue.linear.z, _x.Forcevalue.angular.x, _x.Forcevalue.angular.y, _x.Forcevalue.angular.z))
      length = len(self.Radius.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.Radius.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      buff.write(_get_struct_I().pack(self.Radius.layout.data_offset))
      length = len(self.Radius.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.Radius.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.Forcevalue is None:
        self.Forcevalue = geometry_msgs.msg.Twist()
      if self.Radius is None:
        self.Radius = std_msgs.msg.Float64MultiArray()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.Forcevalue.linear.x, _x.Forcevalue.linear.y, _x.Forcevalue.linear.z, _x.Forcevalue.angular.x, _x.Forcevalue.angular.y, _x.Forcevalue.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Radius.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.Radius.layout.dim.append(val1)
      start = end
      end += 4
      (self.Radius.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.Radius.data = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_6d().pack(_x.Forcevalue.linear.x, _x.Forcevalue.linear.y, _x.Forcevalue.linear.z, _x.Forcevalue.angular.x, _x.Forcevalue.angular.y, _x.Forcevalue.angular.z))
      length = len(self.Radius.layout.dim)
      buff.write(_struct_I.pack(length))
      for val1 in self.Radius.layout.dim:
        _x = val1.label
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _x = val1
        buff.write(_get_struct_2I().pack(_x.size, _x.stride))
      buff.write(_get_struct_I().pack(self.Radius.layout.data_offset))
      length = len(self.Radius.data)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.Radius.data.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.Forcevalue is None:
        self.Forcevalue = geometry_msgs.msg.Twist()
      if self.Radius is None:
        self.Radius = std_msgs.msg.Float64MultiArray()
      end = 0
      _x = self
      start = end
      end += 48
      (_x.Forcevalue.linear.x, _x.Forcevalue.linear.y, _x.Forcevalue.linear.z, _x.Forcevalue.angular.x, _x.Forcevalue.angular.y, _x.Forcevalue.angular.z,) = _get_struct_6d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.Radius.layout.dim = []
      for i in range(0, length):
        val1 = std_msgs.msg.MultiArrayDimension()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.label = str[start:end].decode('utf-8')
        else:
          val1.label = str[start:end]
        _x = val1
        start = end
        end += 8
        (_x.size, _x.stride,) = _get_struct_2I().unpack(str[start:end])
        self.Radius.layout.dim.append(val1)
      start = end
      end += 4
      (self.Radius.layout.data_offset,) = _get_struct_I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.Radius.data = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_6d = None
def _get_struct_6d():
    global _struct_6d
    if _struct_6d is None:
        _struct_6d = struct.Struct("<6d")
    return _struct_6d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
