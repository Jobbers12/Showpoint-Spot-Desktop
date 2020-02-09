import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';
import 'package:showpoint_spot_desktop/theme/style.dart';
import 'package:showpoint_spot_desktop/BlockCanvas.dart';

import 'AppContainer.dart';

void main() => runApp(TopApp());

class TopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Spot Desktop',
        theme: appTheme(),
        debugShowCheckedModeBanner: false,
        home: Material(child: AppContainer()));
  }
}

class App extends StatelessWidget {
  final List<CueModel> cues;

  App({
    this.cues,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        body: Column(
          children: <Widget>[
            BlockCanvas(cues: cues),
          ],
        ));
  }
}