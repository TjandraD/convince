import 'package:flutter/material.dart';
import 'screen/home_screen.dart';

void main() => runApp(ConvinceApp());

class ConvinceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
