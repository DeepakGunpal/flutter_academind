import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(202, 5, 30, 84),
          Color.fromARGB(231, 12, 27, 105)
        ]),
      ),
    ),
  );
}
