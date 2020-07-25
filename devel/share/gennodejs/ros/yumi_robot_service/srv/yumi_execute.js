// Auto-generated. Do not edit!

// (in-package yumi_robot_service.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class yumi_executeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.command = null;
      this.Qt = null;
      this.group_name = null;
      this.t = null;
    }
    else {
      if (initObj.hasOwnProperty('command')) {
        this.command = initObj.command
      }
      else {
        this.command = '';
      }
      if (initObj.hasOwnProperty('Qt')) {
        this.Qt = initObj.Qt
      }
      else {
        this.Qt = [];
      }
      if (initObj.hasOwnProperty('group_name')) {
        this.group_name = initObj.group_name
      }
      else {
        this.group_name = '';
      }
      if (initObj.hasOwnProperty('t')) {
        this.t = initObj.t
      }
      else {
        this.t = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type yumi_executeRequest
    // Serialize message field [command]
    bufferOffset = _serializer.string(obj.command, buffer, bufferOffset);
    // Serialize message field [Qt]
    bufferOffset = _arraySerializer.float64(obj.Qt, buffer, bufferOffset, null);
    // Serialize message field [group_name]
    bufferOffset = _serializer.string(obj.group_name, buffer, bufferOffset);
    // Serialize message field [t]
    bufferOffset = _serializer.int64(obj.t, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type yumi_executeRequest
    let len;
    let data = new yumi_executeRequest(null);
    // Deserialize message field [command]
    data.command = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [Qt]
    data.Qt = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [group_name]
    data.group_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [t]
    data.t = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.command.length;
    length += 8 * object.Qt.length;
    length += object.group_name.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumi_robot_service/yumi_executeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '055e48d58323703c4e4f4ed5d703b3a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string command
    float64[] Qt
    string group_name
    int64 t
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new yumi_executeRequest(null);
    if (msg.command !== undefined) {
      resolved.command = msg.command;
    }
    else {
      resolved.command = ''
    }

    if (msg.Qt !== undefined) {
      resolved.Qt = msg.Qt;
    }
    else {
      resolved.Qt = []
    }

    if (msg.group_name !== undefined) {
      resolved.group_name = msg.group_name;
    }
    else {
      resolved.group_name = ''
    }

    if (msg.t !== undefined) {
      resolved.t = msg.t;
    }
    else {
      resolved.t = 0
    }

    return resolved;
    }
};

class yumi_executeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.xt_hat = null;
      this.Qt_hat = null;
      this.x_next = null;
      this.Q_next = null;
      this.if_collide = null;
    }
    else {
      if (initObj.hasOwnProperty('xt_hat')) {
        this.xt_hat = initObj.xt_hat
      }
      else {
        this.xt_hat = [];
      }
      if (initObj.hasOwnProperty('Qt_hat')) {
        this.Qt_hat = initObj.Qt_hat
      }
      else {
        this.Qt_hat = [];
      }
      if (initObj.hasOwnProperty('x_next')) {
        this.x_next = initObj.x_next
      }
      else {
        this.x_next = [];
      }
      if (initObj.hasOwnProperty('Q_next')) {
        this.Q_next = initObj.Q_next
      }
      else {
        this.Q_next = [];
      }
      if (initObj.hasOwnProperty('if_collide')) {
        this.if_collide = initObj.if_collide
      }
      else {
        this.if_collide = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type yumi_executeResponse
    // Serialize message field [xt_hat]
    bufferOffset = _arraySerializer.float64(obj.xt_hat, buffer, bufferOffset, null);
    // Serialize message field [Qt_hat]
    bufferOffset = _arraySerializer.float64(obj.Qt_hat, buffer, bufferOffset, null);
    // Serialize message field [x_next]
    bufferOffset = _arraySerializer.float64(obj.x_next, buffer, bufferOffset, null);
    // Serialize message field [Q_next]
    bufferOffset = _arraySerializer.float64(obj.Q_next, buffer, bufferOffset, null);
    // Serialize message field [if_collide]
    bufferOffset = _serializer.float64(obj.if_collide, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type yumi_executeResponse
    let len;
    let data = new yumi_executeResponse(null);
    // Deserialize message field [xt_hat]
    data.xt_hat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Qt_hat]
    data.Qt_hat = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [x_next]
    data.x_next = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [Q_next]
    data.Q_next = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [if_collide]
    data.if_collide = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.xt_hat.length;
    length += 8 * object.Qt_hat.length;
    length += 8 * object.x_next.length;
    length += 8 * object.Q_next.length;
    return length + 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'yumi_robot_service/yumi_executeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b29584f03c3a6ac720dc8a841448e252';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64[] xt_hat
    float64[] Qt_hat
    float64[] x_next
    float64[] Q_next
    float64 if_collide
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new yumi_executeResponse(null);
    if (msg.xt_hat !== undefined) {
      resolved.xt_hat = msg.xt_hat;
    }
    else {
      resolved.xt_hat = []
    }

    if (msg.Qt_hat !== undefined) {
      resolved.Qt_hat = msg.Qt_hat;
    }
    else {
      resolved.Qt_hat = []
    }

    if (msg.x_next !== undefined) {
      resolved.x_next = msg.x_next;
    }
    else {
      resolved.x_next = []
    }

    if (msg.Q_next !== undefined) {
      resolved.Q_next = msg.Q_next;
    }
    else {
      resolved.Q_next = []
    }

    if (msg.if_collide !== undefined) {
      resolved.if_collide = msg.if_collide;
    }
    else {
      resolved.if_collide = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: yumi_executeRequest,
  Response: yumi_executeResponse,
  md5sum() { return '24a5a4d139f797e276899139cf7239b0'; },
  datatype() { return 'yumi_robot_service/yumi_execute'; }
};
