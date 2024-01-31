import 'package:flutter/material.dart';
import 'package:basics_1/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(body: GradientContainer(
        Color.fromARGB(255, 14, 48, 53),
        Color.fromARGB(255, 25, 71, 78),
      )),
    ),
  );
}
