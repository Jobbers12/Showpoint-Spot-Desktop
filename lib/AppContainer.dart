import 'package:flutter/material.dart';
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
      // TODO: What the fuck is the syntax to add elements to this list?!
      // '29384790', 5, 'bob', 100, 'FB', 'test', 'test', 10.0, 'khkj', 'hsdfh', 'jasdj' 
    ]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return App();
  }
}
