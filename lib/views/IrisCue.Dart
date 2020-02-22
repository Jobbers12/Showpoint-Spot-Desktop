import 'package:flutter/material.dart';
import 'package:showpoint_spot_desktop/models/CueModel.dart';

class IrisCue extends StatelessWidget {
  final CueModel cueData;

  IrisCue({
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
              left: BorderSide(color: Colors.black, width: 16.0),
            ),
            color: Colors.grey[400],
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
                          Text('SIZE: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Text(cueData.size,
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold))
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text('LX CUE: ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Text(cueData.lxCue.toString(),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline
                                  .copyWith(fontWeight: FontWeight.bold))
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
