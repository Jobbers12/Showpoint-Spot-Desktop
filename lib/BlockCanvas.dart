import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/Block.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

class BlockCanvas extends StatelessWidget {
  final List<CueModel> cues;

  BlockCanvas({
    this.cues,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children:
                cues.map((item) => _displayBlock(item, item.cueType)).toList()));
  }

// Create row to be displayed
  Widget _displayBlock(CueModel cueModel, CueType cueType) {
    return Container(
      //height: _blockHeight(cueModel),
        child: Row(
          
      children: <Widget>[
        Block(
          cueData: cueModel,
          cueType: cueType,
        ),
      ],
    ));
  }

// Determine the height of each block
  // double _blockHeight(CueModel cueModel) {
  //   final cueType = cueModel.cueType;


  // // Return default heights if something goes wrong
  //   switch (cueType) {
  //     case 'int':
  //         return 111.0;
  //       break;
  //     case 'iris':
  //       return 79.0;
  //     case 'color':
  //       return 79.0;
  //     case 'out':
  //       return 79.0;
  //     default:
  //       return 111.0;
  //   }
  // }
}