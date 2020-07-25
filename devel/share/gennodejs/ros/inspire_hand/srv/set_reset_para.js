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

class set_reset_paraRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_reset_paraRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_reset_paraRequest
    let len;
    let data = new set_reset_paraRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_reset_paraRequest';
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
    const resolved = new set_reset_paraRequest(null);
    return resolved;
    }
};

class set_reset_paraResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setreset_para_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('setreset_para_accepted')) {
        this.setreset_para_accepted = initObj.setreset_para_accepted
      }
      else {
        this.setreset_para_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_reset_paraResponse
    // Serialize message field [setreset_para_accepted]
    bufferOffset = _serializer.bool(obj.setreset_para_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_reset_paraResponse
    let len;
    let data = new set_reset_paraResponse(null);
    // Deserialize message field [setreset_para_accepted]
    data.setreset_para_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_reset_paraResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09c8a3c1c50f7ff06e4871280095d7ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool setreset_para_accepted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_reset_paraResponse(null);
    if (msg.setreset_para_accepted !== undefined) {
      resolved.setreset_para_accepted = msg.setreset_para_accepted;
    }
    else {
      resolved.setreset_para_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_reset_paraRequest,
  Response: set_reset_paraResponse,
  md5sum() { return '09c8a3c1c50f7ff06e4871280095d7ee'; },
  datatype() { return 'inspire_hand/set_reset_para'; }
};
