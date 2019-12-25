// Auto-generated. Do not edit!

// (in-package sriforcesensor.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ForceTorquePosition {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Forcevalue = null;
      this.Radius = null;
    }
    else {
      if (initObj.hasOwnProperty('Forcevalue')) {
        this.Forcevalue = initObj.Forcevalue
      }
      else {
        this.Forcevalue = new geometry_msgs.msg.Twist();
      }
      if (initObj.hasOwnProperty('Radius')) {
        this.Radius = initObj.Radius
      }
      else {
        this.Radius = new std_msgs.msg.Float64MultiArray();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceTorquePosition
    // Serialize message field [Forcevalue]
    bufferOffset = geometry_msgs.msg.Twist.serialize(obj.Forcevalue, buffer, bufferOffset);
    // Serialize message field [Radius]
    bufferOffset = std_msgs.msg.Float64MultiArray.serialize(obj.Radius, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceTorquePosition
    let len;
    let data = new ForceTorquePosition(null);
    // Deserialize message field [Forcevalue]
    data.Forcevalue = geometry_msgs.msg.Twist.deserialize(buffer, bufferOffset);
    // Deserialize message field [Radius]
    data.Radius = std_msgs.msg.Float64MultiArray.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Float64MultiArray.getMessageSize(object.Radius);
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sriforcesensor/ForceTorquePosition';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b109b108f2bbaf48766fe7d3d50d6ee5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Twist Forcevalue
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
    uint32 stride  # stride of given dimension
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ForceTorquePosition(null);
    if (msg.Forcevalue !== undefined) {
      resolved.Forcevalue = geometry_msgs.msg.Twist.Resolve(msg.Forcevalue)
    }
    else {
      resolved.Forcevalue = new geometry_msgs.msg.Twist()
    }

    if (msg.Radius !== undefined) {
      resolved.Radius = std_msgs.msg.Float64MultiArray.Resolve(msg.Radius)
    }
    else {
      resolved.Radius = new std_msgs.msg.Float64MultiArray()
    }

    return resolved;
    }
};

module.exports = ForceTorquePosition;
