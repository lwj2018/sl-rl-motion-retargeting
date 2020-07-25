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

class set_default_forceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.force0 = null;
      this.force1 = null;
      this.force2 = null;
      this.force3 = null;
      this.force4 = null;
      this.force5 = null;
    }
    else {
      if (initObj.hasOwnProperty('force0')) {
        this.force0 = initObj.force0
      }
      else {
        this.force0 = 0;
      }
      if (initObj.hasOwnProperty('force1')) {
        this.force1 = initObj.force1
      }
      else {
        this.force1 = 0;
      }
      if (initObj.hasOwnProperty('force2')) {
        this.force2 = initObj.force2
      }
      else {
        this.force2 = 0;
      }
      if (initObj.hasOwnProperty('force3')) {
        this.force3 = initObj.force3
      }
      else {
        this.force3 = 0;
      }
      if (initObj.hasOwnProperty('force4')) {
        this.force4 = initObj.force4
      }
      else {
        this.force4 = 0;
      }
      if (initObj.hasOwnProperty('force5')) {
        this.force5 = initObj.force5
      }
      else {
        this.force5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_default_forceRequest
    // Serialize message field [force0]
    bufferOffset = _serializer.int32(obj.force0, buffer, bufferOffset);
    // Serialize message field [force1]
    bufferOffset = _serializer.int32(obj.force1, buffer, bufferOffset);
    // Serialize message field [force2]
    bufferOffset = _serializer.int32(obj.force2, buffer, bufferOffset);
    // Serialize message field [force3]
    bufferOffset = _serializer.int32(obj.force3, buffer, bufferOffset);
    // Serialize message field [force4]
    bufferOffset = _serializer.int32(obj.force4, buffer, bufferOffset);
    // Serialize message field [force5]
    bufferOffset = _serializer.int32(obj.force5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_default_forceRequest
    let len;
    let data = new set_default_forceRequest(null);
    // Deserialize message field [force0]
    data.force0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force1]
    data.force1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force2]
    data.force2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force3]
    data.force3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force4]
    data.force4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [force5]
    data.force5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_default_forceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c8721b68bc7d5e3d85bff9ad38312ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 force0
    int32 force1
    int32 force2
    int32 force3
    int32 force4
    int32 force5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_default_forceRequest(null);
    if (msg.force0 !== undefined) {
      resolved.force0 = msg.force0;
    }
    else {
      resolved.force0 = 0
    }

    if (msg.force1 !== undefined) {
      resolved.force1 = msg.force1;
    }
    else {
      resolved.force1 = 0
    }

    if (msg.force2 !== undefined) {
      resolved.force2 = msg.force2;
    }
    else {
      resolved.force2 = 0
    }

    if (msg.force3 !== undefined) {
      resolved.force3 = msg.force3;
    }
    else {
      resolved.force3 = 0
    }

    if (msg.force4 !== undefined) {
      resolved.force4 = msg.force4;
    }
    else {
      resolved.force4 = 0
    }

    if (msg.force5 !== undefined) {
      resolved.force5 = msg.force5;
    }
    else {
      resolved.force5 = 0
    }

    return resolved;
    }
};

class set_default_forceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.default_force_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('default_force_accepted')) {
        this.default_force_accepted = initObj.default_force_accepted
      }
      else {
        this.default_force_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_default_forceResponse
    // Serialize message field [default_force_accepted]
    bufferOffset = _serializer.bool(obj.default_force_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_default_forceResponse
    let len;
    let data = new set_default_forceResponse(null);
    // Deserialize message field [default_force_accepted]
    data.default_force_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_default_forceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b3b7e5997787de41cb7b83abb2496832';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool default_force_accepted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_default_forceResponse(null);
    if (msg.default_force_accepted !== undefined) {
      resolved.default_force_accepted = msg.default_force_accepted;
    }
    else {
      resolved.default_force_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_default_forceRequest,
  Response: set_default_forceResponse,
  md5sum() { return 'ee9e1744a60012332db6529559adffe2'; },
  datatype() { return 'inspire_hand/set_default_force'; }
};
