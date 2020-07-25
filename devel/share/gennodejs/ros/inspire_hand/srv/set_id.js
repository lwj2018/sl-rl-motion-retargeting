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

class set_idRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_idRequest
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_idRequest
    let len;
    let data = new set_idRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_idRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5e4a7d59c68f74eabcec876a00216aa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_idRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class set_idResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idgrab = null;
    }
    else {
      if (initObj.hasOwnProperty('idgrab')) {
        this.idgrab = initObj.idgrab
      }
      else {
        this.idgrab = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_idResponse
    // Serialize message field [idgrab]
    bufferOffset = _serializer.bool(obj.idgrab, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_idResponse
    let len;
    let data = new set_idResponse(null);
    // Deserialize message field [idgrab]
    data.idgrab = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_idResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f3154975e1d2695a8f316a8e2000a60';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool idgrab
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_idResponse(null);
    if (msg.idgrab !== undefined) {
      resolved.idgrab = msg.idgrab;
    }
    else {
      resolved.idgrab = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_idRequest,
  Response: set_idResponse,
  md5sum() { return '5d26ecd99832c8b42f5065ef1190a622'; },
  datatype() { return 'inspire_hand/set_id'; }
};
