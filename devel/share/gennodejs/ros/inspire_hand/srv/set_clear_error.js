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

class set_clear_errorRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_clear_errorRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_clear_errorRequest
    let len;
    let data = new set_clear_errorRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_clear_errorRequest';
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
    const resolved = new set_clear_errorRequest(null);
    return resolved;
    }
};

class set_clear_errorResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setclear_error_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('setclear_error_accepted')) {
        this.setclear_error_accepted = initObj.setclear_error_accepted
      }
      else {
        this.setclear_error_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_clear_errorResponse
    // Serialize message field [setclear_error_accepted]
    bufferOffset = _serializer.bool(obj.setclear_error_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_clear_errorResponse
    let len;
    let data = new set_clear_errorResponse(null);
    // Deserialize message field [setclear_error_accepted]
    data.setclear_error_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_clear_errorResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a7e6099bc802656c2632bf2a50f44b2b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool setclear_error_accepted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_clear_errorResponse(null);
    if (msg.setclear_error_accepted !== undefined) {
      resolved.setclear_error_accepted = msg.setclear_error_accepted;
    }
    else {
      resolved.setclear_error_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_clear_errorRequest,
  Response: set_clear_errorResponse,
  md5sum() { return 'a7e6099bc802656c2632bf2a50f44b2b'; },
  datatype() { return 'inspire_hand/set_clear_error'; }
};
