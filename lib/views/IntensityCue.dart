import 'package:flutter/material.dart';

class IntensityCue extends StatelessWidget {
  final Color bgColor;

  IntensityCue({
    this.bgColor,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.black, width: 3.0)),
              color: bgColor),
          padding: EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('ROXIE',
                          style: Theme.of(context)
                              .textTheme
                              .headline
                              .copyWith(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('100',
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
                      Text('HB', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('FRAME'),
                      Text('F + 3',
                          style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('TIME'),
                      Text('3s', style: TextStyle(fontWeight: FontWeight.bold))
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('LX CUE'),
                      Text('14', style: TextStyle(fontWeight: FontWeight.bold))
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
