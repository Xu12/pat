// Auto-generated. Do not edit!

// (in-package uwb_driver.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class uwbModeConfigRequest {
  constructor() {
    this.p4xxmode = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type uwbModeConfigRequest
    // Serialize message field [p4xxmode]
    bufferInfo = _serializer.uint8(obj.p4xxmode, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type uwbModeConfigRequest
    let tmp;
    let len;
    let data = new uwbModeConfigRequest();
    // Deserialize message field [p4xxmode]
    tmp = _deserializer.uint8(buffer);
    data.p4xxmode = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'uwb_driver/uwbModeConfigRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75d19d6d016d1f98bca72b11def5a3a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 p4xxmode
    
    `;
  }

};

class uwbModeConfigResponse {
  constructor() {
    this.result = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type uwbModeConfigResponse
    // Serialize message field [result]
    bufferInfo = _serializer.uint8(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type uwbModeConfigResponse
    let tmp;
    let len;
    let data = new uwbModeConfigResponse();
    // Deserialize message field [result]
    tmp = _deserializer.uint8(buffer);
    data.result = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'uwb_driver/uwbModeConfigResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '25458147911545c320c4c0a299eff763';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 result
    
    
    `;
  }

};

module.exports = {
  Request: uwbModeConfigRequest,
  Response: uwbModeConfigResponse
};
