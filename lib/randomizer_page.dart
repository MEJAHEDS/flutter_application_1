import 'dart:math';

import 'package:flutter/material.dart';

class RandomizePage extends StatefulWidget {
  final int min, max;
  const RandomizePage({super.key, required this.min, required this.max});

  @override
  State<RandomizePage> createState() => _RandomizePageState();
}

class _RandomizePageState extends State<RandomizePage> {
  int? _generatedNumber;
  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    widget.min;

    return Scaffold(
      appBar: AppBar(
        title: Text('Randomizer'),
      ),
      body: Center(
          child: Text(
        _generatedNumber?.toString() ?? 'Generate a number',
        style: TextStyle(fontSize: 42),
      )),
      floatingActionButton: FloatingActionButton.extended(
          label: Text('Generate'),
          onPressed: (() {
            setState(() {
              _generatedNumber = widget.min +
                  randomGenerator.nextInt(widget.max + 1 - widget.min);
            });
          })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
