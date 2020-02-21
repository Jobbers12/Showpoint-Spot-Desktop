import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';
import 'package:showpoint_spot_desktop/views/IntensityCue.dart';
import 'package:showpoint_spot_desktop/views/ColorCue.dart';
import 'package:showpoint_spot_desktop/views/IrisCue.dart';
import 'package:showpoint_spot_desktop/views/OutCue.dart';

// BlockData determines which typ[e of cue will be displayed. IntensityCue, ColorCue, IrisCue or OutCue 
class BlockData extends StatelessWidget {
  //final List<CueModel> cues;

  final CueModel cueData;

  final CueType cueType;

  final Color bgColor;

  BlockData({
    //this.cues,
    this.cueData,
    @required this.cueType,
    this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        // Foreach cue in our cues list, generate correct cue block
        // Assign height of each block based on One row for each cue number (50px to start with)
        child: _blockType(cueType));
  }

  Widget _blockType(CueType cueType) {
    switch (cueType) {
      case CueType.intensity:
        return IntensityCue(cueData: cueData);
        break;
      case CueType.color:
        return ColorCue(cueData: cueData);
        break;
      case CueType.iris:
        return IrisCue(cueData: cueData);
        break;
      case CueType.out:
        return OutCue(cueData: cueData);
        break;
    }
    return null;
  }
}
