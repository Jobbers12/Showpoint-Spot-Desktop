import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/enums.dart';

class CueModel {
  final String uid; //string
  final int spotID; //int
  final double spotCue; //int
  final String outCue; //string
  final double lxCue; //double
  final CueType cueType; //string
  final String who; //string
  final int intensity; //int
  final String size; //string
  final String color; //string
  final String time; //string
  final String location; //string
  final String notes; //string
  

  CueModel({
    @required this.uid,
    @required this.spotCue,
    @required this.spotID,
    this.outCue,
    this.lxCue,
    this.cueType,
    this.who,
    this.intensity,
    this.size,
    this.color,
    this.time,
    this.location,
    this.notes
  });

  // CueModel.toJson(Map<String, dynamic> json) :
  //   this.uid = json['uid'],
  //   this.spotCue = json['spotCue'],
  //   this.who = ShowValueModel<String>.toJson(json['who']),
  //   this.intensity = ShowValueModel<int>.fromJson(json['intensity']),
  //   this.size = ShowValueModel<String>.fromJson(json['size']),
  //   this.frame = ShowValueModel<String>.fromJson(json['frame']),
  //   this.time = ShowValueModel<String>.fromJson(json['time']),
  //   this.lxCue = ShowValueModel<double>.fromJson(json['lxCue']),
  //   this.location = ShowValueModel<String>.fromJson(json['location']),
  //   this.notes = json['notes'];
}
