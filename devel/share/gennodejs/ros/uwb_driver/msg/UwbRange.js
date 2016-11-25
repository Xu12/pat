// Auto-generated. Do not edit!

// (in-package uwb_driver.msg)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class UwbRange {
  constructor() {
    this.header = new std_msgs.msg.Header();
    this.responder_id = 0;
    this.responder_idx = 0;
    this.distance = 0.0;
    this.distance_err = 0.0;
    this.distance_dot = 0.0;
    this.distance_dot_err = 0.0;
    this.antenna = 0;
    this.stopwatch_time = 0;
    this.uwb_time = 0;
    this.responder_location = new geometry_msgs.msg.Point();
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type UwbRange
    // Serialize message field [header]
    bufferInfo = std_msgs.msg.Header.serialize(obj.header, bufferInfo);
    // Serialize message field [responder_id]
    bufferInfo = _serializer.uint8(obj.responder_id, bufferInfo);
    // Serialize message field [responder_idx]
    bufferInfo = _serializer.uint8(obj.responder_idx, bufferInfo);
    // Serialize message field [distance]
    bufferInfo = _serializer.float32(obj.distance, bufferInfo);
    // Serialize message field [distance_err]
    bufferInfo = _serializer.float32(obj.distance_err, bufferInfo);
    // Serialize message field [distance_dot]
    bufferInfo = _serializer.float32(obj.distance_dot, bufferInfo);
    // Serialize message field [distance_dot_err]
    bufferInfo = _serializer.float32(obj.distance_dot_err, bufferInfo);
    // Serialize message field [antenna]
    bufferInfo = _serializer.int8(obj.antenna, bufferInfo);
    // Serialize message field [stopwatch_time]
    bufferInfo = _serializer.uint16(obj.stopwatch_time, bufferInfo);
    // Serialize message field [uwb_time]
    bufferInfo = _serializer.uint32(obj.uwb_time, bufferInfo);
    // Serialize message field [responder_location]
    bufferInfo = geometry_msgs.msg.Point.serialize(obj.responder_location, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type UwbRange
    let tmp;
    let len;
    let data = new UwbRange();
    // Deserialize message field [header]
    tmp = std_msgs.msg.Header.deserialize(buffer);
    data.header = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [responder_id]
    tmp = _deserializer.uint8(buffer);
    data.responder_id = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [responder_idx]
    tmp = _deserializer.uint8(buffer);
    data.responder_idx = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [distance]
    tmp = _deserializer.float32(buffer);
    data.distance = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [distance_err]
    tmp = _deserializer.float32(buffer);
    data.distance_err = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [distance_dot]
    tmp = _deserializer.float32(buffer);
    data.distance_dot = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [distance_dot_err]
    tmp = _deserializer.float32(buffer);
    data.distance_dot_err = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [antenna]
    tmp = _deserializer.int8(buffer);
    data.antenna = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [stopwatch_time]
    tmp = _deserializer.uint16(buffer);
    data.stopwatch_time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [uwb_time]
    tmp = _deserializer.uint32(buffer);
    data.uwb_time = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [responder_location]
    tmp = geometry_msgs.msg.Point.deserialize(buffer);
    data.responder_location = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a message object
    return 'uwb_driver/UwbRange';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '087a1d035ad0011be2ad2b94335b90d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header					            # ROS header
    uint8 responder_id				            # Identity number of the responding P4xx
    uint8 responder_idx				            # Index number of the node in the responding array passed by rosparam
    float32 distance				            # Distance measurement
    float32 distance_err                                        # Error estimated by P4xx
    float32 distance_dot                                        # Range velocity estimated by Pxx
    float32 distance_dot_err                                    # Range velocity error estimated by Pxx
    int8 antenna					            # Antenna where the measurement was carried out
    uint16 stopwatch_time                                       # How long the range conversation took, in ms
    uint32 uwb_time					            # ms since radio boot at the time of the range conversation nb
    geometry_msgs/Point responder_location		# Location of the node if known
    
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
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

};

module.exports = UwbRange;
