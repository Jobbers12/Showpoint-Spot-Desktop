import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/enums.dart';
import 'package:showpoint_spot_desktop/main.dart';
import 'package:showpoint_spot_desktop/models/AppStateModel.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

class AppContainer extends StatefulWidget {
  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainer> {
  AppStateModel appState;
@override
  void initState() {
    appState = AppStateModel(cues: <CueModel>[
      CueModel(
        uid: '1',
        spotCue: 1,
        who: 'Roxie',
        intensity: 100,
        size: 'FB',
        frame: 'F + 2',
        time: '3s',
        lxCue: 4,
        location: 'DS OP - P/U on Rostra',
        notes: 'Occaecat adipisicing velit adipisicing labore ullamco qui eu culpa duis est pariatur esse fugiat occaecat.',
        cueType: 'int',
      ),
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return App();
  }
}
