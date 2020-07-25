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

class set_posRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos0 = null;
      this.pos1 = null;
      this.pos2 = null;
      this.pos3 = null;
      this.pos4 = null;
      this.pos5 = null;
    }
    else {
      if (initObj.hasOwnProperty('pos0')) {
        this.pos0 = initObj.pos0
      }
      else {
        this.pos0 = 0;
      }
      if (initObj.hasOwnProperty('pos1')) {
        this.pos1 = initObj.pos1
      }
      else {
        this.pos1 = 0;
      }
      if (initObj.hasOwnProperty('pos2')) {
        this.pos2 = initObj.pos2
      }
      else {
        this.pos2 = 0;
      }
      if (initObj.hasOwnProperty('pos3')) {
        this.pos3 = initObj.pos3
      }
      else {
        this.pos3 = 0;
      }
      if (initObj.hasOwnProperty('pos4')) {
        this.pos4 = initObj.pos4
      }
      else {
        this.pos4 = 0;
      }
      if (initObj.hasOwnProperty('pos5')) {
        this.pos5 = initObj.pos5
      }
      else {
        this.pos5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_posRequest
    // Serialize message field [pos0]
    bufferOffset = _serializer.int32(obj.pos0, buffer, bufferOffset);
    // Serialize message field [pos1]
    bufferOffset = _serializer.int32(obj.pos1, buffer, bufferOffset);
    // Serialize message field [pos2]
    bufferOffset = _serializer.int32(obj.pos2, buffer, bufferOffset);
    // Serialize message field [pos3]
    bufferOffset = _serializer.int32(obj.pos3, buffer, bufferOffset);
    // Serialize message field [pos4]
    bufferOffset = _serializer.int32(obj.pos4, buffer, bufferOffset);
    // Serialize message field [pos5]
    bufferOffset = _serializer.int32(obj.pos5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_posRequest
    let len;
    let data = new set_posRequest(null);
    // Deserialize message field [pos0]
    data.pos0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos1]
    data.pos1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos2]
    data.pos2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos3]
    data.pos3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos4]
    data.pos4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos5]
    data.pos5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_posRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '44ecda5531a5154559fe37419faa32a4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 pos0
    int32 pos1
    int32 pos2
    int32 pos3
    int32 pos4
    int32 pos5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_posRequest(null);
    if (msg.pos0 !== undefined) {
      resolved.pos0 = msg.pos0;
    }
    else {
      resolved.pos0 = 0
    }

    if (msg.pos1 !== undefined) {
      resolved.pos1 = msg.pos1;
    }
    else {
      resolved.pos1 = 0
    }

    if (msg.pos2 !== undefined) {
      resolved.pos2 = msg.pos2;
    }
    else {
      resolved.pos2 = 0
    }

    if (msg.pos3 !== undefined) {
      resolved.pos3 = msg.pos3;
    }
    else {
      resolved.pos3 = 0
    }

    if (msg.pos4 !== undefined) {
      resolved.pos4 = msg.pos4;
    }
    else {
      resolved.pos4 = 0
    }

    if (msg.pos5 !== undefined) {
      resolved.pos5 = msg.pos5;
    }
    else {
      resolved.pos5 = 0
    }

    return resolved;
    }
};

class set_posResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_accepted')) {
        this.pos_accepted = initObj.pos_accepted
      }
      else {
        this.pos_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_posResponse
    // Serialize message field [pos_accepted]
    bufferOffset = _serializer.bool(obj.pos_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_posResponse
    let len;
    let data = new set_posResponse(null);
    // Deserialize message field [pos_accepted]
    data.pos_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_posResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '642adf9364b32587cec215516fb006b2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool pos_accepted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_posResponse(null);
    if (msg.pos_accepted !== undefined) {
      resolved.pos_accepted = msg.pos_accepted;
    }
    else {
      resolved.pos_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_posRequest,
  Response: set_posResponse,
  md5sum() { return '469bce018568d1f214a0c5f75e89bf97'; },
  datatype() { return 'inspire_hand/set_pos'; }
};
