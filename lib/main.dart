import 'package:flutter/material.dart';

void main() {
  runApp(const TheWarriorsApp());
}

class TheWarriorsApp extends StatelessWidget {
  const TheWarriorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Warriors App',
    );
  }
}
