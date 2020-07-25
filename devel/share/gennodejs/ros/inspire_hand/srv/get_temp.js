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

class get_tempRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_tempRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_tempRequest
    let len;
    let data = new get_tempRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_tempRequest';
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
    const resolved = new get_tempRequest(null);
    return resolved;
    }
};

class get_tempResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tempvalue = null;
    }
    else {
      if (initObj.hasOwnProperty('tempvalue')) {
        this.tempvalue = initObj.tempvalue
      }
      else {
        this.tempvalue = new Array(6).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type get_tempResponse
    // Check that the constant length array field [tempvalue] has the right length
    if (obj.tempvalue.length !== 6) {
      throw new Error('Unable to serialize array field tempvalue - length must be 6')
    }
    // Serialize message field [tempvalue]
    bufferOffset = _arraySerializer.float32(obj.tempvalue, buffer, bufferOffset, 6);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type get_tempResponse
    let len;
    let data = new get_tempResponse(null);
    // Deserialize message field [tempvalue]
    data.tempvalue = _arrayDeserializer.float32(buffer, bufferOffset, 6)
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/get_tempResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'faddf0cc102ec4c0d38aeffe0b8b6296';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[6] tempvalue
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new get_tempResponse(null);
    if (msg.tempvalue !== undefined) {
      resolved.tempvalue = msg.tempvalue;
    }
    else {
      resolved.tempvalue = new Array(6).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: get_tempRequest,
  Response: get_tempResponse,
  md5sum() { return 'faddf0cc102ec4c0d38aeffe0b8b6296'; },
  datatype() { return 'inspire_hand/get_temp'; }
};
