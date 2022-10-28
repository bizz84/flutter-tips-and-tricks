import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedContainerPage(),
    );
  }
}

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 200;
  double _height = 200;
  Color _color = Colors.red.shade500;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(16);

  final random = Random();

  void _randomize() {
    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
        random.nextInt(128),
        random.nextInt(128),
        random.nextInt(128),
        1,
      );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Center(
                child: AnimatedContainer(
                  width: _width,
                  height: _height,
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: _borderRadius,
                  ),
                  duration: Duration(milliseconds: 400),
                  curve: Curves.easeIn,
                ),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.topCenter,
                child: TextButton.icon(
                  icon: Icon(Icons.play_arrow),
                  label: Text('Play animation'),
                  onPressed: _randomize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
