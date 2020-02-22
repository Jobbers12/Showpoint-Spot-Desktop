import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/BlockData.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

// BlockCanvas is used to create layout of blocks based on cue data.
class BlockCanvas extends StatelessWidget {
  final List<CueModel> cues;
  final int selectedSpotID;

  BlockCanvas({
    this.cues,
    this.selectedSpotID,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          // TITLE ROW
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    border: _bottomBorder(),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                      ),
                      Text('SPOT CUE',
                          style: Theme.of(context)
                              .textTheme
                              .title
                              .copyWith(fontWeight: FontWeight.bold)),
                      Text(
                        'UPDATE 00001',
                        style: TextStyle(
                            color: Colors.grey, fontStyle: FontStyle.italic),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: _sideBorders().copyWith(
                    color: _currentlySelectedSpot(selectedSpotID, 1),
                    border: _bottomBorder(),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                      ),
                      Text(
                        'SPOT 1',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text('SAM'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  decoration: _sideBorders().copyWith(
                      color: _currentlySelectedSpot(selectedSpotID, 2)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 4),
                      ),
                      Text(
                        'SPOT 2',
                        style: Theme.of(context)
                            .textTheme
                            .title
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Text('PETE'),
                      Padding(
                        padding: EdgeInsets.only(bottom: 8),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ), // END TITLE ROW

          // MAIN CUES ROWS
          Row(
            children: <Widget>[
              // LIST OF ALL CUE NUMBERS
              Expanded(
                flex: 1,
                child: Column(
                    children: cues
                        .map((item) => _displayCueNumbers(
                            item.spotCue, item.cueType, context))
                        .toList()),
              ),
              // LIST OF SPOT ONE CUES. NEED TO ARRANGE BASED ON LIST
              Expanded(
                flex: 6,
                child: Container(
                  decoration: _sideBorders(),
                  child: Column(
                    children: cues
                        .map((item) => _displayBlock(item, item.cueType))
                        .toList(),
                  ),
                ),
              ),
              // LIST OF SPOT TWO CUE NUMBERS. CURRENTLY HERE TO USE FOR SPACING REASONS
              Expanded(
                flex: 6,
                child: Container(
                  decoration: _sideBorders(),
                  child: Column(
                    children: <Widget>[Text('SPOT 2')],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

// Create row to be displayed
  Widget _displayBlock(CueModel cueModel, CueType cueType) {
    return Container(
        height: _blockHeight(cueType),
        child: Row(
          children: <Widget>[
            BlockData(
              cueData: cueModel,
              cueType: cueType,
            ),
          ],
        ));
  }

// Generates a row with a cue number within it
  Widget _displayCueNumbers(
      double cueNumber, CueType cueType, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: _bottomBorder(),
      ),
      height: _blockHeight(cueType),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            cueNumber.toString(),
            style: Theme.of(context)
                .textTheme
                .subtitle
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Sets background color of the currently selected spot
  Color _currentlySelectedSpot(int currentlySelectedSpot, int spotID) {
    Color selectedColor = Colors.green; // BG color for the selected spot
    Color unselectedColor =
        Colors.transparent; // BG colors for the unselected spot

    switch (spotID) {
      case 1:
        if (currentlySelectedSpot == 1) {
          return selectedColor;
        }
        return unselectedColor;
        break;
      case 2:
        if (currentlySelectedSpot == 2) {
          return selectedColor;
        }
        return unselectedColor;
      default:
        return unselectedColor;
    }
  }

// Determine the height of each block
  double _blockHeight(CueType cueType) {
    // Return default heights if something goes wrong
    switch (cueType) {
      case CueType.intensity:
        return 111.0;
        break;
      case CueType.iris:
        return 79.0;
      case CueType.color:
        return 79.0;
      case CueType.out:
        return 79.0;
      default:
        return 111.0;
    }
  }
}

// Returns side borders
BoxDecoration _sideBorders() {
  return BoxDecoration(
    border: Border(
      left: BorderSide(
        color: Colors.black,
        width: 3.0,
      ),
      right: BorderSide(
        color: Colors.black,
        width: 3.0,
      ),
    ),
  );
}

// Returns a bottom border
Border _bottomBorder() {
  return Border(
    bottom: BorderSide(
      color: Colors.black,
      width: 3.0,
    ),
  );
}
