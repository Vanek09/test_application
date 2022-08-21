import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const _rgbColor = 256;
  static const double _fontSize = 36;
  final _phrases = const [
    'Hey there',
    'Привіт',
    'Sie da',
    'Hola',
    'Ciao',
    'Привет',
    'No hej',
    'Zdravím',
    'Salut'
  ];
  var _indexPhrase = 0;
  var _backgroundColor = Colors.white;
  var _textColor = Colors.black;
  final titleApp = 'Test Application';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold(
        appBar: AppBar(
          title: Text(titleApp),
        ),
        backgroundColor: _backgroundColor,
        body: Center(
          child: Text(
            _phrases[_indexPhrase],
            style: TextStyle(
              fontSize: _fontSize,
              fontWeight: FontWeight.bold,
              color: _textColor,
            ),
          ),
        ),
      ),
      onTap: () {
        onTab();
      },
    );
  }

  void onTab() {
    setState(() {
      final random = Random();
      _backgroundColor = _genereteColor(random);
      _textColor = _genereteColor(random);
      _indexChecker();
    });
  }

  Color _genereteColor(Random random) => Color.fromRGBO(
        random.nextInt(_rgbColor),
        random.nextInt(_rgbColor),
        random.nextInt(_rgbColor),
        1,
      );

  void _indexChecker() {
    if (_indexPhrase < _phrases.length - 1) {
      _indexPhrase++;
    } else {
      _indexPhrase = 0;
    }
  }
}
