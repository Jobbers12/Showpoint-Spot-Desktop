import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/Block.dart';
import 'package:showpoint_spot_desktop/theme/style.dart';
import 'package:showpoint_spot_desktop/views/ColorCue.dart';
import 'package:showpoint_spot_desktop/views/IntensityCue.dart';
import 'package:showpoint_spot_desktop/views/IrisCue.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        IntensityCue(bgColor: Colors.green[300]),
        ColorCue(),
        IrisCue(),
        IntensityCue(bgColor: Colors.blue[300]),
      ],
    ));
  }
}
