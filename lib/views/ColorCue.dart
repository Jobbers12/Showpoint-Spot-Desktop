import 'package:flutter/material.dart';

class ColorCue extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.black, width: 3.0),
              left: BorderSide(color: Colors.black, width: 10.0),
            ),
            color: Colors.grey[200],
          ),
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('FRAME: 5',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('LX CUE: 100',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text('LOCATION: '),
                  Text('US OP - Pickup on Rostra',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                children: <Widget>[
                  Text('NOTES: '),
                  Text(
                      'Reprehenderit in fugiat minim elit qui pariatur ex est nulla.',
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              )
            ],
          )),
    );
  }
}
