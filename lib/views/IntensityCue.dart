import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

class IntensityCue extends StatelessWidget {
  final CueModel cueData;
  final Color bgColor;

  IntensityCue({
    this.cueData,
    this.bgColor,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.black, width: 3.0),
              ),
              color: bgColor),
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text(cueData.who.toUpperCase(),
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.bold)),
                      //TextField(controller: TextEditingController()..text = 'test',)
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(cueData.intensity.toString(),
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('SIZE'),
                      Text(cueData.size,
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('COLOR'),
                      Text(cueData.color,
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('TIME'),
                      Text(cueData.time,
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('LX CUE'),
                      Text(cueData.lxCue.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text('LOCATION: '),
                  Text(cueData.location,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: <Widget>[
                  Text('NOTES: '),
                  Text(cueData.notes,
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          )),
    );
  }
}
