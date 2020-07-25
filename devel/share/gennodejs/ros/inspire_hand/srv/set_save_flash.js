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

class set_save_flashRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_save_flashRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_save_flashRequest
    let len;
    let data = new set_save_flashRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_save_flashRequest';
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
    const resolved = new set_save_flashRequest(null);
    return resolved;
    }
};

class set_save_flashResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setsave_flash_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('setsave_flash_accepted')) {
        this.setsave_flash_accepted = initObj.setsave_flash_accepted
      }
      else {
        this.setsave_flash_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_save_flashResponse
    // Serialize message field [setsave_flash_accepted]
    bufferOffset = _serializer.bool(obj.setsave_flash_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_save_flashResponse
    let len;
    let data = new set_save_flashResponse(null);
    // Deserialize message field [setsave_flash_accepted]
    data.setsave_flash_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_save_flashResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ce29f0181fca97433252cab2ac73bda5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool setsave_flash_accepted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_save_flashResponse(null);
    if (msg.setsave_flash_accepted !== undefined) {
      resolved.setsave_flash_accepted = msg.setsave_flash_accepted;
    }
    else {
      resolved.setsave_flash_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_save_flashRequest,
  Response: set_save_flashResponse,
  md5sum() { return 'ce29f0181fca97433252cab2ac73bda5'; },
  datatype() { return 'inspire_hand/set_save_flash'; }
};
