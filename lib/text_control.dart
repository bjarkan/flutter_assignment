//import packages for system
import 'package:flutter/material.dart';

//import packages for app
import './text_output.dart';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  String _mainText = 'This is the first exercise';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      ElevatedButton(
        onPressed: () {
          setState(() {
            _mainText = "Está cambiado";
          });
        },
        child: Text('Cambiar texto'),
      ),
      TextOutput(_mainText)
    ]);
  }
}
