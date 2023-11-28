import 'package:flutter/material.dart';
import 'package:flutter_layout_examples/gaps.dart';

class IntrinsicWidthScreen extends StatefulWidget {
  const IntrinsicWidthScreen({super.key});

  @override
  State<IntrinsicWidthScreen> createState() => _IntrinsicWidthScreenState();
}

class _IntrinsicWidthScreenState extends State<IntrinsicWidthScreen> {
  var fontSize = 18.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Slider.adaptive(
                value: fontSize,
                min: 18,
                max: 32,
                onChanged: (value) => setState(() => fontSize = value),
              ),
            ),
            gapH32,
            Theme(
              data: ThemeData(
                textTheme: TextTheme(
                  labelLarge: TextStyle(fontSize: fontSize),
                ),
              ),
              child: const IntrinsicWidthContent(),
            ),
          ],
        ),
      ),
    );
  }
}

class IntrinsicWidthContent extends StatelessWidget {
  const IntrinsicWidthContent({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('First Button')),
          gapH16,
          ElevatedButton(onPressed: () {}, child: const Text('Second Button')),
          gapH16,
          ElevatedButton(onPressed: () {}, child: const Text('Third Button')),
        ],
      ),
    );
  }
}

class SizedBoxContent extends StatelessWidget {
  const SizedBoxContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('First Button')),
          gapH16,
          ElevatedButton(onPressed: () {}, child: const Text('Second Button')),
          gapH16,
          ElevatedButton(onPressed: () {}, child: const Text('Third Button')),
        ],
      ),
    );
  }
}

class NoFixedWidthContent extends StatelessWidget {
  const NoFixedWidthContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      //crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(onPressed: () {}, child: const Text('First Button')),
        gapH16,
        ElevatedButton(onPressed: () {}, child: const Text('Second Button')),
        gapH16,
        ElevatedButton(onPressed: () {}, child: const Text('Third Button')),
      ],
    );
  }
}
