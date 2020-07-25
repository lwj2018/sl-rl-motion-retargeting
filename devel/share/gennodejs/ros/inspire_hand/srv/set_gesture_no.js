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

class set_gesture_noRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gesture_no = null;
    }
    else {
      if (initObj.hasOwnProperty('gesture_no')) {
        this.gesture_no = initObj.gesture_no
      }
      else {
        this.gesture_no = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_gesture_noRequest
    // Serialize message field [gesture_no]
    bufferOffset = _serializer.int32(obj.gesture_no, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gesture_noRequest
    let len;
    let data = new set_gesture_noRequest(null);
    // Deserialize message field [gesture_no]
    data.gesture_no = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_gesture_noRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ea289c543a56bf8388893db17ebece7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 gesture_no
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_gesture_noRequest(null);
    if (msg.gesture_no !== undefined) {
      resolved.gesture_no = msg.gesture_no;
    }
    else {
      resolved.gesture_no = 0
    }

    return resolved;
    }
};

class set_gesture_noResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.gesture_nograb = null;
    }
    else {
      if (initObj.hasOwnProperty('gesture_nograb')) {
        this.gesture_nograb = initObj.gesture_nograb
      }
      else {
        this.gesture_nograb = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type set_gesture_noResponse
    // Serialize message field [gesture_nograb]
    bufferOffset = _serializer.bool(obj.gesture_nograb, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type set_gesture_noResponse
    let len;
    let data = new set_gesture_noResponse(null);
    // Deserialize message field [gesture_nograb]
    data.gesture_nograb = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'inspire_hand/set_gesture_noResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '824a75c5329ea6ddcb5d80fa3550cb1c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool gesture_nograb
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new set_gesture_noResponse(null);
    if (msg.gesture_nograb !== undefined) {
      resolved.gesture_nograb = msg.gesture_nograb;
    }
    else {
      resolved.gesture_nograb = false
    }

    return resolved;
    }
};

module.exports = {
  Request: set_gesture_noRequest,
  Response: set_gesture_noResponse,
  md5sum() { return '1c20fda01ca101ed126c4cedf7ac0213'; },
  datatype() { return 'inspire_hand/set_gesture_no'; }
};
