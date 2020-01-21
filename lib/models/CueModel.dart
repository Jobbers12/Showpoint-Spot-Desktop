import 'package:flutter/material.dart';

class CueModel {
  final String uid; //string
  final int spotCue; //int
  final String who; //string
  final int intensity; //int
  final String size; //string
  final String frame; //string
  final String time; //string
  final double lxCue; //double
  final String location; //string
  final String notes; //string
  final String cueType; //string

  CueModel({
    @required this.uid,
    @required this.spotCue,
    this.who,
    this.intensity,
    this.size,
    this.frame,
    this.time,
    this.lxCue,
    this.location,
    this.notes,
    this.cueType,
  });
}
