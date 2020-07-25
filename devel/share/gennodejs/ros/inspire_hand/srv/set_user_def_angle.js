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

class set_user_def_angleRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle0 = null;
      this.angle1 = null;
      this.angle2 = null;
      this.angle3 = null;
      this.angle4 = null;
      this.angle5 = null;
      this.k = null;
    }
    else {
      if (initObj.hasOwnProperty('angle0')) {
        this.angle0 = initObj.angle0
      }
      else {
        this.angle0 = 0;
      }
      if (initObj.hasOwnProperty('angle1')) {
        this.angle1 = initObj.angle1
      }
      else {
        this.angle1 = 0;
      }
      if (initObj.hasOwnProperty('angle2')) {
        this.angle2 = initObj.angle2
      }
      else {
        this.angle2 = 0;
      }
      if (initObj.hasOwnProperty('angle3')) {
        this.angle3 = initObj.angle3
      }
      else {
        this.angle3 = 0;
      }
      if (initObj.hasOwnProperty('angle4')) {
        this.angle4 = initObj.angle4
      }
      else {
        this.angle4 = 0;
      }
      if (initObj.hasOwnProperty('angle5')) {
        this.angle5 = initObj.angle5
      }
      else {
        this.angle5 = 0;
      }
      if (initObj.hasOwnProperty('k')) {
        this.k = initObj.k
      }
      else {
        this.k = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_user_def_angleRequest
    // Serialize message field [angle0]
    bufferOffset = _serializer.int32(obj.angle0, buffer, bufferOffset);
    // Serialize message field [angle1]
    bufferOffset = _serializer.int32(obj.angle1, buffer, bufferOffset);
    // Serialize message field [angle2]
    bufferOffset = _serializer.int32(obj.angle2, buffer, bufferOffset);
    // Serialize message field [angle3]
    bufferOffset = _serializer.int32(obj.angle3, buffer, bufferOffset);
    // Serialize message field [angle4]
    bufferOffset = _serializer.int32(obj.angle4, buffer, bufferOffset);
    // Serialize message field [angle5]
    bufferOffset = _serializer.int32(obj.angle5, buffer, bufferOffset);
    // Serialize message field [k]
    bufferOffset = _serializer.int32(obj.k, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_user_def_angleRequest
    let len;
    let data = new set_user_def_angleRequest(null);
    // Deserialize message field [angle0]
    data.angle0 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle1]
    data.angle1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle2]
    data.angle2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle3]
    data.angle3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle4]
    data.angle4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [angle5]
    data.angle5 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [k]
    data.k = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_user_def_angleRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3ca0fd0f21baa0c9269de1034273b80d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 angle0
    int32 angle1
    int32 angle2
    int32 angle3
    int32 angle4
    int32 angle5
    int32 k
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_user_def_angleRequest(null);
    if (msg.angle0 !== undefined) {
      resolved.angle0 = msg.angle0;
    }
    else {
      resolved.angle0 = 0
    }

    if (msg.angle1 !== undefined) {
      resolved.angle1 = msg.angle1;
    }
    else {
      resolved.angle1 = 0
    }

    if (msg.angle2 !== undefined) {
      resolved.angle2 = msg.angle2;
    }
    else {
      resolved.angle2 = 0
    }

    if (msg.angle3 !== undefined) {
      resolved.angle3 = msg.angle3;
    }
    else {
      resolved.angle3 = 0
    }

    if (msg.angle4 !== undefined) {
      resolved.angle4 = msg.angle4;
    }
    else {
      resolved.angle4 = 0
    }

    if (msg.angle5 !== undefined) {
      resolved.angle5 = msg.angle5;
    }
    else {
      resolved.angle5 = 0
    }

    if (msg.k !== undefined) {
      resolved.k = msg.k;
    }
    else {
      resolved.k = 0
    }

    return resolved;
    }
};

class set_user_def_angleResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angle_accepted = null;
    }
    else {
      if (initObj.hasOwnProperty('angle_accepted')) {
        this.angle_accepted = initObj.angle_accepted
      }
      else {
        this.angle_accepted = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_user_def_angleResponse
    // Serialize message field [angle_accepted]
    bufferOffset = _serializer.bool(obj.angle_accepted, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_user_def_angleResponse
    let len;
    let data = new set_user_def_angleResponse(null);
    // Deserialize message field [angle_accepted]
    data.angle_accepted = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_user_def_angleResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1508b076c4c46f43d5103fcfc81271e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool angle_accepted
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_user_def_angleResponse(null);
    if (msg.angle_accepted !== undefined) {
      resolved.angle_accepted = msg.angle_accepted;
    }
    else {
      resolved.angle_accepted = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_user_def_angleRequest,
  Response: set_user_def_angleResponse,
  md5sum() { return '15586ac6795c92bb925e681bde9775c3'; },
  datatype() { return 'inspire_hand/set_user_def_angle'; }
};
