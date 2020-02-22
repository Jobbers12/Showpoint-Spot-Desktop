import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

class OutCue extends StatelessWidget {
  final CueModel cueData;

  OutCue({
    this.cueData,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(color: Colors.black, width: 3.0),
              //left: BorderSide(color: Colors.black, width: 16.0),
            ),
            color: Colors.green[300],
          ),
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text(cueData.who.toUpperCase(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('OUT',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
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
