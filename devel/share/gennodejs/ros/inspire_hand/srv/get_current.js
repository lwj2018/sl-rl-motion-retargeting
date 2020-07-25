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

class get_currentRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_currentRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_currentRequest
    let len;
    let data = new get_currentRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_currentRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_currentRequest(null);
    return resolved;
    }
};

class get_currentResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_currentResponse
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 6) {
      throw new Error('Unable to serialize array field current - length must be 6')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float32(obj.current, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_currentResponse
    let len;
    let data = new get_currentResponse(null);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_currentResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11d573dfe70ac25437cf58ad00cf741d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] current
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_currentResponse(null);
    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_currentRequest,
  Response: get_currentResponse,
  md5sum() { return '11d573dfe70ac25437cf58ad00cf741d'; },
  datatype() { return 'inspire_hand/get_current'; }
};
