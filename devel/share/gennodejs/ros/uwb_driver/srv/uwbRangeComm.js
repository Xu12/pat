// Auto-generated. Do not edit!

// (in-package uwb_driver.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class uwbRangeCommRequest {
  constructor() {
    this.action = 0;
    this.responder = 0;
    this.antenna = 0;
    this.channel = 0;
    this.data_size = 0;
    this.data = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type uwbRangeCommRequest
    // Serialize message field [action]
    bufferInfo = _serializer.uint8(obj.action, bufferInfo);
    // Serialize message field [responder]
    bufferInfo = _serializer.uint8(obj.responder, bufferInfo);
    // Serialize message field [antenna]
    bufferInfo = _serializer.uint8(obj.antenna, bufferInfo);
    // Serialize message field [channel]
    bufferInfo = _serializer.uint8(obj.channel, bufferInfo);
    // Serialize message field [data_size]
    bufferInfo = _serializer.uint16(obj.data_size, bufferInfo);
    // Serialize the length for message field [data]
    bufferInfo = _serializer.uint32(obj.data.length, bufferInfo);
    // Serialize message field [data]
    bufferInfo.buffer.push(obj.data);
    bufferInfo.length += obj.data.length;
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type uwbRangeCommRequest
    let tmp;
    let len;
    let data = new uwbRangeCommRequest();
    // Deserialize message field [action]
    tmp = _deserializer.uint8(buffer);
    data.action = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [responder]
    tmp = _deserializer.uint8(buffer);
    data.responder = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [antenna]
    tmp = _deserializer.uint8(buffer);
    data.antenna = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [channel]
    tmp = _deserializer.uint8(buffer);
    data.channel = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data_size]
    tmp = _deserializer.uint16(buffer);
    data.data_size = tmp.data;
    buffer = tmp.buffer;
    // Deserialize array length for message field [data]
    tmp = _deserializer.uint32(buffer);
    len = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [data]
    data.data = buffer.slice(0, len);
    buffer =  buffer.slice(len);
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'uwb_driver/uwbRangeCommRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '953d86283d0b1fd716c465aa92da7ecd';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 action
    
    
    
    
    
    uint8 responder
    uint8 antenna
    uint8 channel
    uint16 data_size
    uint8[] data
    
    `;
  }

};

class uwbRangeCommResponse {
  constructor() {
    this.result = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type uwbRangeCommResponse
    // Serialize message field [result]
    bufferInfo = _serializer.uint8(obj.result, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type uwbRangeCommResponse
    let tmp;
    let len;
    let data = new uwbRangeCommResponse();
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
    return 'uwb_driver/uwbRangeCommResponse';
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
  Request: uwbRangeCommRequest,
  Response: uwbRangeCommResponse
};
