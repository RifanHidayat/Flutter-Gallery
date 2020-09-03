import 'package:flutter/material.dart';
import 'package:gallery/ui/Galerry.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Galeery',
      color: Colors.blue,
      debugShowCheckedModeBanner: false,
      home: GalerryScreen(),
    );
  }
}
