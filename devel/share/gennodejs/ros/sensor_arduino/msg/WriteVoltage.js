// Auto-generated. Do not edit!

// (in-package sensor_arduino.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WriteVoltage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voltage = null;
    }
    else {
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WriteVoltage
    // Serialize message field [voltage]
    bufferOffset = _arraySerializer.int16(obj.voltage, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WriteVoltage
    let len;
    let data = new WriteVoltage(null);
    // Deserialize message field [voltage]
    data.voltage = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.voltage.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'sensor_arduino/WriteVoltage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8343d456b6f735c9321e0caae0e82981';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16[] voltage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WriteVoltage(null);
    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = []
    }

    return resolved;
    }
};

module.exports = WriteVoltage;
