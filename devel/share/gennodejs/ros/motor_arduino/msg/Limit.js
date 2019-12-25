// Auto-generated. Do not edit!

// (in-package motor_arduino.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Limit {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limit_number = null;
      this.limit_start = null;
    }
    else {
      if (initObj.hasOwnProperty('limit_number')) {
        this.limit_number = initObj.limit_number
      }
      else {
        this.limit_number = 0;
      }
      if (initObj.hasOwnProperty('limit_start')) {
        this.limit_start = initObj.limit_start
      }
      else {
        this.limit_start = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Limit
    // Serialize message field [limit_number]
    bufferOffset = _serializer.int16(obj.limit_number, buffer, bufferOffset);
    // Serialize message field [limit_start]
    bufferOffset = _serializer.bool(obj.limit_start, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Limit
    let len;
    let data = new Limit(null);
    // Deserialize message field [limit_number]
    data.limit_number = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [limit_start]
    data.limit_start = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motor_arduino/Limit';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e1063a34d7b440da198356c0d16d8c89';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 limit_number
    bool limit_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Limit(null);
    if (msg.limit_number !== undefined) {
      resolved.limit_number = msg.limit_number;
    }
    else {
      resolved.limit_number = 0
    }

    if (msg.limit_start !== undefined) {
      resolved.limit_start = msg.limit_start;
    }
    else {
      resolved.limit_start = false
    }

    return resolved;
    }
};

module.exports = Limit;
