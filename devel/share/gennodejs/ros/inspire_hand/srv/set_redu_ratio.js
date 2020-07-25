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

class set_redu_ratioRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.redu_ratio = null;
    }
    else {
      if (initObj.hasOwnProperty('redu_ratio')) {
        this.redu_ratio = initObj.redu_ratio
      }
      else {
        this.redu_ratio = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_redu_ratioRequest
    // Serialize message field [redu_ratio]
    bufferOffset = _serializer.int32(obj.redu_ratio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_redu_ratioRequest
    let len;
    let data = new set_redu_ratioRequest(null);
    // Deserialize message field [redu_ratio]
    data.redu_ratio = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_redu_ratioRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f53cf3e807cecd6ac535ce2490110114';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 redu_ratio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_redu_ratioRequest(null);
    if (msg.redu_ratio !== undefined) {
      resolved.redu_ratio = msg.redu_ratio;
    }
    else {
      resolved.redu_ratio = 0
    }

    return resolved;
    }
};

class set_redu_ratioResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.redu_ratiograb = null;
    }
    else {
      if (initObj.hasOwnProperty('redu_ratiograb')) {
        this.redu_ratiograb = initObj.redu_ratiograb
      }
      else {
        this.redu_ratiograb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_redu_ratioResponse
    // Serialize message field [redu_ratiograb]
    bufferOffset = _serializer.bool(obj.redu_ratiograb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_redu_ratioResponse
    let len;
    let data = new set_redu_ratioResponse(null);
    // Deserialize message field [redu_ratiograb]
    data.redu_ratiograb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_redu_ratioResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4d1b975ad952b9874bc1e1818834aa76';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool redu_ratiograb
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_redu_ratioResponse(null);
    if (msg.redu_ratiograb !== undefined) {
      resolved.redu_ratiograb = msg.redu_ratiograb;
    }
    else {
      resolved.redu_ratiograb = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_redu_ratioRequest,
  Response: set_redu_ratioResponse,
  md5sum() { return 'e26114f6520fcbdb49066d390f601c35'; },
  datatype() { return 'inspire_hand/set_redu_ratio'; }
};
