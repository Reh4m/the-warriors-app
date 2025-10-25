import 'package:flutter/material.dart';
import 'package:the_warriors_app/src/screens/home_screen.dart';

void main() {
  runApp(const TheWarriorsApp());
}

class TheWarriorsApp extends StatelessWidget {
  const TheWarriorsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Warriors App',
      themeMode: ThemeMode.dark,
      home: HomeScreen(),
    );
  }
}
