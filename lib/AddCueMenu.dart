import 'package:flutter/material.dart';

class AddCueMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        icon: Icon(Icons.add),
        onSelected: (value) => _handleSelection(value, context),
        itemBuilder: (context) {
          return <PopupMenuEntry<dynamic>>[
            PopupMenuItem(
              child: Text('Intensity Cue'),
              value: 'int',
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              child: Text('Color Cue'),
              value: 'color',
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              child: Text('Size Cue'),
              value: 'size',
            ),
          ];
        });
  }

  void _handleSelection(dynamic value, BuildContext context) {}
}
