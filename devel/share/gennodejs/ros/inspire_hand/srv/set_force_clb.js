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

class set_force_clbRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_force_clbRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_force_clbRequest
    let len;
    let data = new set_force_clbRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_force_clbRequest';
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
    const resolved = new set_force_clbRequest(null);
    return resolved;
    }
};

class set_force_clbResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setforce_clb_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('setforce_clb_accepted')) {
        this.setforce_clb_accepted = initObj.setforce_clb_accepted
      }
      else {
        this.setforce_clb_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_force_clbResponse
    // Serialize message field [setforce_clb_accepted]
    bufferOffset = _serializer.bool(obj.setforce_clb_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_force_clbResponse
    let len;
    let data = new set_force_clbResponse(null);
    // Deserialize message field [setforce_clb_accepted]
    data.setforce_clb_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_force_clbResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1ed618c9431c8faa2d80a957bf7da809';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool setforce_clb_accepted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_force_clbResponse(null);
    if (msg.setforce_clb_accepted !== undefined) {
      resolved.setforce_clb_accepted = msg.setforce_clb_accepted;
    }
    else {
      resolved.setforce_clb_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_force_clbRequest,
  Response: set_force_clbResponse,
  md5sum() { return '1ed618c9431c8faa2d80a957bf7da809'; },
  datatype() { return 'inspire_hand/set_force_clb'; }
};
