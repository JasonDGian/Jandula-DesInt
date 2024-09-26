import 'package:flutter/material.dart';
import 'package:test1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
        colorSchemeSeed: Colors.blueAccent
      ),
      debugShowCheckedModeBanner: false,
      home: const CounterScreen()
    );
  }
}
