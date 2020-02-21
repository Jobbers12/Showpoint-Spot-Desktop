import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

// Blocks are empty widgets which create a height. The Block Canvas will layout blocks and give them a height. Either a blank block or a block which calls
// BlockData to fill cue data
class Block extends StatelessWidget {
  final CueModel cueData;

  final CueType cueType;
  final BlockType blockType;
  final int height;

  Block({
    this.cueData,
    this.cueType,
    this.blockType,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
