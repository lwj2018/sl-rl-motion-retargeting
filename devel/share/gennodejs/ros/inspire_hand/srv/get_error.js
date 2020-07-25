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

class get_errorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_errorRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_errorRequest
    let len;
    let data = new get_errorRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_errorRequest';
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
    const resolved = new get_errorRequest(null);
    return resolved;
    }
};

class get_errorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.errorvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('errorvalue')) {
        this.errorvalue = initObj.errorvalue
      }
      else {
        this.errorvalue = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_errorResponse
    // Check that the constant length array field [errorvalue] has the right length
    if (obj.errorvalue.length !== 6) {
      throw new Error('Unable to serialize array field errorvalue - length must be 6')
    }
    // Serialize message field [errorvalue]
    bufferOffset = _arraySerializer.float32(obj.errorvalue, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_errorResponse
    let len;
    let data = new get_errorResponse(null);
    // Deserialize message field [errorvalue]
    data.errorvalue = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_errorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a53f03f634bc27bd5924537063e03a53';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] errorvalue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_errorResponse(null);
    if (msg.errorvalue !== undefined) {
      resolved.errorvalue = msg.errorvalue;
    }
    else {
      resolved.errorvalue = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_errorRequest,
  Response: get_errorResponse,
  md5sum() { return 'a53f03f634bc27bd5924537063e03a53'; },
  datatype() { return 'inspire_hand/get_error'; }
};
