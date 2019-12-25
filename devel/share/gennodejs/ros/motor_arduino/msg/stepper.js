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

class stepper {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stepper_number = null;
      this.stepper_direction = null;
      this.stepper_count = null;
    }
    else {
      if (initObj.hasOwnProperty('stepper_number')) {
        this.stepper_number = initObj.stepper_number
      }
      else {
        this.stepper_number = 0;
      }
      if (initObj.hasOwnProperty('stepper_direction')) {
        this.stepper_direction = initObj.stepper_direction
      }
      else {
        this.stepper_direction = false;
      }
      if (initObj.hasOwnProperty('stepper_count')) {
        this.stepper_count = initObj.stepper_count
      }
      else {
        this.stepper_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type stepper
    // Serialize message field [stepper_number]
    bufferOffset = _serializer.int16(obj.stepper_number, buffer, bufferOffset);
    // Serialize message field [stepper_direction]
    bufferOffset = _serializer.bool(obj.stepper_direction, buffer, bufferOffset);
    // Serialize message field [stepper_count]
    bufferOffset = _serializer.int16(obj.stepper_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type stepper
    let len;
    let data = new stepper(null);
    // Deserialize message field [stepper_number]
    data.stepper_number = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [stepper_direction]
    data.stepper_direction = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [stepper_count]
    data.stepper_count = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'motor_arduino/stepper';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '418c9f364f01d80c862df03ea60e9515';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 stepper_number
    bool stepper_direction
    int16 stepper_count
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new stepper(null);
    if (msg.stepper_number !== undefined) {
      resolved.stepper_number = msg.stepper_number;
    }
    else {
      resolved.stepper_number = 0
    }

    if (msg.stepper_direction !== undefined) {
      resolved.stepper_direction = msg.stepper_direction;
    }
    else {
      resolved.stepper_direction = false
    }

    if (msg.stepper_count !== undefined) {
      resolved.stepper_count = msg.stepper_count;
    }
    else {
      resolved.stepper_count = 0
    }

    return resolved;
    }
};

module.exports = stepper;
