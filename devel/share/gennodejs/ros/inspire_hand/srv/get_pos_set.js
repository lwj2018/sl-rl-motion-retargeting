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

class get_pos_setRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pos_setRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pos_setRequest
    let len;
    let data = new get_pos_setRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_pos_setRequest';
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
    const resolved = new get_pos_setRequest(null);
    return resolved;
    }
};

class get_pos_setResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setpos = null;
    }
    else {
      if (initObj.hasOwnProperty('setpos')) {
        this.setpos = initObj.setpos
      }
      else {
        this.setpos = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pos_setResponse
    // Check that the constant length array field [setpos] has the right length
    if (obj.setpos.length !== 6) {
      throw new Error('Unable to serialize array field setpos - length must be 6')
    }
    // Serialize message field [setpos]
    bufferOffset = _arraySerializer.float32(obj.setpos, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pos_setResponse
    let len;
    let data = new get_pos_setResponse(null);
    // Deserialize message field [setpos]
    data.setpos = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_pos_setResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cffb9069f96661e23c6011a89561b5a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] setpos
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_pos_setResponse(null);
    if (msg.setpos !== undefined) {
      resolved.setpos = msg.setpos;
    }
    else {
      resolved.setpos = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_pos_setRequest,
  Response: get_pos_setResponse,
  md5sum() { return 'cffb9069f96661e23c6011a89561b5a1'; },
  datatype() { return 'inspire_hand/get_pos_set'; }
};
