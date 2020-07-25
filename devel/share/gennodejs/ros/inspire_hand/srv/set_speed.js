// Auto-generated. Do not edit!

// (in-package inspire_hand.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class set_speedRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed0 = null;
      this.speed1 = null;
      this.speed2 = null;
      this.speed3 = null;
      this.speed4 = null;
      this.speed5 = null;
    }
    else {
      if (initObj.hasOwnProperty('speed0')) {
        this.speed0 = initObj.speed0
      }
      else {
        this.speed0 = 0;
      }
      if (initObj.hasOwnProperty('speed1')) {
        this.speed1 = initObj.speed1
      }
      else {
        this.speed1 = 0;
      }
      if (initObj.hasOwnProperty('speed2')) {
        this.speed2 = initObj.speed2
      }
      else {
        this.speed2 = 0;
      }
      if (initObj.hasOwnProperty('speed3')) {
        this.speed3 = initObj.speed3
      }
      else {
        this.speed3 = 0;
      }
      if (initObj.hasOwnProperty('speed4')) {
        this.speed4 = initObj.speed4
      }
      else {
        this.speed4 = 0;
      }
      if (initObj.hasOwnProperty('speed5')) {
        this.speed5 = initObj.speed5
      }
      else {
        this.speed5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_speedRequest
    // Serialize message field [speed0]
    bufferOffset = _serializer.int32(obj.speed0, buffer, bufferOffset);
    // Serialize message field [speed1]
    bufferOffset = _serializer.int32(obj.speed1, buffer, bufferOffset);
    // Serialize message field [speed2]
    bufferOffset = _serializer.int32(obj.speed2, buffer, bufferOffset);
    // Serialize message field [speed3]
    bufferOffset = _serializer.int32(obj.speed3, buffer, bufferOffset);
    // Serialize message field [speed4]
    bufferOffset = _serializer.int32(obj.speed4, buffer, bufferOffset);
    // Serialize message field [speed5]
    bufferOffset = _serializer.int32(obj.speed5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_speedRequest
    let len;
    let data = new set_speedRequest(null);
    // Deserialize message field [speed0]
    data.speed0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed1]
    data.speed1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed2]
    data.speed2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed3]
    data.speed3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed4]
    data.speed4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [speed5]
    data.speed5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_speedRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9b81c1887290eb799831f63509865cac';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 speed0
    int32 speed1
    int32 speed2
    int32 speed3
    int32 speed4
    int32 speed5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_speedRequest(null);
    if (msg.speed0 !== undefined) {
      resolved.speed0 = msg.speed0;
    }
    else {
      resolved.speed0 = 0
    }

    if (msg.speed1 !== undefined) {
      resolved.speed1 = msg.speed1;
    }
    else {
      resolved.speed1 = 0
    }

    if (msg.speed2 !== undefined) {
      resolved.speed2 = msg.speed2;
    }
    else {
      resolved.speed2 = 0
    }

    if (msg.speed3 !== undefined) {
      resolved.speed3 = msg.speed3;
    }
    else {
      resolved.speed3 = 0
    }

    if (msg.speed4 !== undefined) {
      resolved.speed4 = msg.speed4;
    }
    else {
      resolved.speed4 = 0
    }

    if (msg.speed5 !== undefined) {
      resolved.speed5 = msg.speed5;
    }
    else {
      resolved.speed5 = 0
    }

    return resolved;
    }
};

class set_speedResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speed_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('speed_accepted')) {
        this.speed_accepted = initObj.speed_accepted
      }
      else {
        this.speed_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_speedResponse
    // Serialize message field [speed_accepted]
    bufferOffset = _serializer.bool(obj.speed_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_speedResponse
    let len;
    let data = new set_speedResponse(null);
    // Deserialize message field [speed_accepted]
    data.speed_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_speedResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9bb3ff7624b31e52edd1d0b2bbbae418';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool speed_accepted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_speedResponse(null);
    if (msg.speed_accepted !== undefined) {
      resolved.speed_accepted = msg.speed_accepted;
    }
    else {
      resolved.speed_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_speedRequest,
  Response: set_speedResponse,
  md5sum() { return '9679dcfdc38eebef480b0c5f0f9a084d'; },
  datatype() { return 'inspire_hand/set_speed'; }
};
