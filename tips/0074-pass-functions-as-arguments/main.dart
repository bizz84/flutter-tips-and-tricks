import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      theme: ThemeData.light(),
      home: const MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  void onPressed() {
    print('I got pressed!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => onPressed(),
        backgroundColor: Colors.yellow[700],
        child: Icon(Icons.bolt, color: Colors.black),
      ),
      appBar: AppBar(
        title: const Text('Flutter app'),
      ),
      body: Center(
        child: Text('Hello world!'),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}
