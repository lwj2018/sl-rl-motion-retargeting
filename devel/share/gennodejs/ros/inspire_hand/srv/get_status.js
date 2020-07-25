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

class get_statusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_statusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_statusRequest
    let len;
    let data = new get_statusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_statusRequest';
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
    const resolved = new get_statusRequest(null);
    return resolved;
    }
};

class get_statusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('statusvalue')) {
        this.statusvalue = initObj.statusvalue
      }
      else {
        this.statusvalue = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_statusResponse
    // Check that the constant length array field [statusvalue] has the right length
    if (obj.statusvalue.length !== 6) {
      throw new Error('Unable to serialize array field statusvalue - length must be 6')
    }
    // Serialize message field [statusvalue]
    bufferOffset = _arraySerializer.float32(obj.statusvalue, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_statusResponse
    let len;
    let data = new get_statusResponse(null);
    // Deserialize message field [statusvalue]
    data.statusvalue = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_statusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2adc8174938c5ee3fd3a4e108c6b64f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] statusvalue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_statusResponse(null);
    if (msg.statusvalue !== undefined) {
      resolved.statusvalue = msg.statusvalue;
    }
    else {
      resolved.statusvalue = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_statusRequest,
  Response: get_statusResponse,
  md5sum() { return 'e2adc8174938c5ee3fd3a4e108c6b64f'; },
  datatype() { return 'inspire_hand/get_status'; }
};
