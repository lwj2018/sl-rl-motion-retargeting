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

class set_current_limitRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current0 = null;
      this.current1 = null;
      this.current2 = null;
      this.current3 = null;
      this.current4 = null;
      this.current5 = null;
    }
    else {
      if (initObj.hasOwnProperty('current0')) {
        this.current0 = initObj.current0
      }
      else {
        this.current0 = 0;
      }
      if (initObj.hasOwnProperty('current1')) {
        this.current1 = initObj.current1
      }
      else {
        this.current1 = 0;
      }
      if (initObj.hasOwnProperty('current2')) {
        this.current2 = initObj.current2
      }
      else {
        this.current2 = 0;
      }
      if (initObj.hasOwnProperty('current3')) {
        this.current3 = initObj.current3
      }
      else {
        this.current3 = 0;
      }
      if (initObj.hasOwnProperty('current4')) {
        this.current4 = initObj.current4
      }
      else {
        this.current4 = 0;
      }
      if (initObj.hasOwnProperty('current5')) {
        this.current5 = initObj.current5
      }
      else {
        this.current5 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_current_limitRequest
    // Serialize message field [current0]
    bufferOffset = _serializer.int32(obj.current0, buffer, bufferOffset);
    // Serialize message field [current1]
    bufferOffset = _serializer.int32(obj.current1, buffer, bufferOffset);
    // Serialize message field [current2]
    bufferOffset = _serializer.int32(obj.current2, buffer, bufferOffset);
    // Serialize message field [current3]
    bufferOffset = _serializer.int32(obj.current3, buffer, bufferOffset);
    // Serialize message field [current4]
    bufferOffset = _serializer.int32(obj.current4, buffer, bufferOffset);
    // Serialize message field [current5]
    bufferOffset = _serializer.int32(obj.current5, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_current_limitRequest
    let len;
    let data = new set_current_limitRequest(null);
    // Deserialize message field [current0]
    data.current0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current1]
    data.current1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current2]
    data.current2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current3]
    data.current3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current4]
    data.current4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [current5]
    data.current5 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_current_limitRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9a9062b22d95e0929b8d48bafef48d49';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 current0
    int32 current1
    int32 current2
    int32 current3
    int32 current4
    int32 current5
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_current_limitRequest(null);
    if (msg.current0 !== undefined) {
      resolved.current0 = msg.current0;
    }
    else {
      resolved.current0 = 0
    }

    if (msg.current1 !== undefined) {
      resolved.current1 = msg.current1;
    }
    else {
      resolved.current1 = 0
    }

    if (msg.current2 !== undefined) {
      resolved.current2 = msg.current2;
    }
    else {
      resolved.current2 = 0
    }

    if (msg.current3 !== undefined) {
      resolved.current3 = msg.current3;
    }
    else {
      resolved.current3 = 0
    }

    if (msg.current4 !== undefined) {
      resolved.current4 = msg.current4;
    }
    else {
      resolved.current4 = 0
    }

    if (msg.current5 !== undefined) {
      resolved.current5 = msg.current5;
    }
    else {
      resolved.current5 = 0
    }

    return resolved;
    }
};

class set_current_limitResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_limit_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('current_limit_accepted')) {
        this.current_limit_accepted = initObj.current_limit_accepted
      }
      else {
        this.current_limit_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_current_limitResponse
    // Serialize message field [current_limit_accepted]
    bufferOffset = _serializer.bool(obj.current_limit_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_current_limitResponse
    let len;
    let data = new set_current_limitResponse(null);
    // Deserialize message field [current_limit_accepted]
    data.current_limit_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_current_limitResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91307348c21336c78336107026a1dcce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool current_limit_accepted
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_current_limitResponse(null);
    if (msg.current_limit_accepted !== undefined) {
      resolved.current_limit_accepted = msg.current_limit_accepted;
    }
    else {
      resolved.current_limit_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_current_limitRequest,
  Response: set_current_limitResponse,
  md5sum() { return '422c9f6eddce4f2b83bdd05a0c49ffe4'; },
  datatype() { return 'inspire_hand/set_current_limit'; }
};
