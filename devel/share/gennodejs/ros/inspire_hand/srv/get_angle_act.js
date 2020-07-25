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

class get_angle_actRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_angle_actRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_angle_actRequest
    let len;
    let data = new get_angle_actRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_angle_actRequest';
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
    const resolved = new get_angle_actRequest(null);
    return resolved;
    }
};

class get_angle_actResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.curangle = null;
    }
    else {
      if (initObj.hasOwnProperty('curangle')) {
        this.curangle = initObj.curangle
      }
      else {
        this.curangle = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_angle_actResponse
    // Check that the constant length array field [curangle] has the right length
    if (obj.curangle.length !== 6) {
      throw new Error('Unable to serialize array field curangle - length must be 6')
    }
    // Serialize message field [curangle]
    bufferOffset = _arraySerializer.float32(obj.curangle, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_angle_actResponse
    let len;
    let data = new get_angle_actResponse(null);
    // Deserialize message field [curangle]
    data.curangle = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_angle_actResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2329a3c808aea9d534c8a2279948da90';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] curangle
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_angle_actResponse(null);
    if (msg.curangle !== undefined) {
      resolved.curangle = msg.curangle;
    }
    else {
      resolved.curangle = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_angle_actRequest,
  Response: get_angle_actResponse,
  md5sum() { return '2329a3c808aea9d534c8a2279948da90'; },
  datatype() { return 'inspire_hand/get_angle_act'; }
};
