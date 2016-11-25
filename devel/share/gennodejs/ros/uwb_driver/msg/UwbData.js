// Auto-generated. Do not edit!

// (in-package uwb_driver.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UwbData {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.source_id = 0;
    this.source_idx = 0;
    this.antenna = 0;
    this.uwb_time = 0;
    this.data_size = 0;
    this.data = [];
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type UwbData
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [source_id]
    bufferInfo = _serializer.uint8(obj.source_id, bufferInfo);
    // Serialize message field [source_idx]
    bufferInfo = _serializer.uint8(obj.source_idx, bufferInfo);
    // Serialize message field [antenna]
    bufferInfo = _serializer.int8(obj.antenna, bufferInfo);
    // Serialize message field [uwb_time]
    bufferInfo = _serializer.uint32(obj.uwb_time, bufferInfo);
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
    //deserializes a message object of type UwbData
    let tmp;
    let len;
    let data = new UwbData();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [source_id]
    tmp = _deserializer.uint8(buffer);
    data.source_id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [source_idx]
    tmp = _deserializer.uint8(buffer);
    data.source_idx = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [antenna]
    tmp = _deserializer.int8(buffer);
    data.antenna = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [uwb_time]
    tmp = _deserializer.uint32(buffer);
    data.uwb_time = tmp.data;
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
    // Returns string type for a message object
    return 'uwb_driver/UwbData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '896b7e3783097862580617e2dfa7fe33';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header					# ROS header
    uint8 source_id					# Identity number of the data sending P4xx
    uint8 source_idx				# Index number of the data sending node passed by rosparam
    int8 antenna					# Antenna where the measurement was carried out
    uint32 uwb_time 				# ms since radio boot at the time of the range conversation
    uint16 data_size				# number of data bytes received
    uint8[] data					# data array, data message will come seperately from the range
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

};

module.exports = UwbData;
