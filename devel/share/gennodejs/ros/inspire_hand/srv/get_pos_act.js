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

class get_pos_actRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pos_actRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pos_actRequest
    let len;
    let data = new get_pos_actRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_pos_actRequest';
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
    const resolved = new get_pos_actRequest(null);
    return resolved;
    }
};

class get_pos_actResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curpos = null;
    }
    else {
      if (initObj.hasOwnProperty('curpos')) {
        this.curpos = initObj.curpos
      }
      else {
        this.curpos = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_pos_actResponse
    // Check that the constant length array field [curpos] has the right length
    if (obj.curpos.length !== 6) {
      throw new Error('Unable to serialize array field curpos - length must be 6')
    }
    // Serialize message field [curpos]
    bufferOffset = _arraySerializer.float32(obj.curpos, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_pos_actResponse
    let len;
    let data = new get_pos_actResponse(null);
    // Deserialize message field [curpos]
    data.curpos = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_pos_actResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a70fb6e8637c623cad009e6d713de894';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] curpos
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_pos_actResponse(null);
    if (msg.curpos !== undefined) {
      resolved.curpos = msg.curpos;
    }
    else {
      resolved.curpos = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_pos_actRequest,
  Response: get_pos_actResponse,
  md5sum() { return 'a70fb6e8637c623cad009e6d713de894'; },
  datatype() { return 'inspire_hand/get_pos_act'; }
};
