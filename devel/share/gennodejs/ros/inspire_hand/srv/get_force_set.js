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

class get_force_setRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_force_setRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_force_setRequest
    let len;
    let data = new get_force_setRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_force_setRequest';
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
    const resolved = new get_force_setRequest(null);
    return resolved;
    }
};

class get_force_setResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setforce = null;
    }
    else {
      if (initObj.hasOwnProperty('setforce')) {
        this.setforce = initObj.setforce
      }
      else {
        this.setforce = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_force_setResponse
    // Check that the constant length array field [setforce] has the right length
    if (obj.setforce.length !== 6) {
      throw new Error('Unable to serialize array field setforce - length must be 6')
    }
    // Serialize message field [setforce]
    bufferOffset = _arraySerializer.float32(obj.setforce, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_force_setResponse
    let len;
    let data = new get_force_setResponse(null);
    // Deserialize message field [setforce]
    data.setforce = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_force_setResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '36dc498fde31a7d3735606fe581fda5c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] setforce
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_force_setResponse(null);
    if (msg.setforce !== undefined) {
      resolved.setforce = msg.setforce;
    }
    else {
      resolved.setforce = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_force_setRequest,
  Response: get_force_setResponse,
  md5sum() { return '36dc498fde31a7d3735606fe581fda5c'; },
  datatype() { return 'inspire_hand/get_force_set'; }
};
