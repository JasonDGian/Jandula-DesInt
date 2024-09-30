import 'package:flutter/material.dart';
import 'package:test1/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blueAccent
      ),
      debugShowCheckedModeBanner: true,
      home: const CounterScreen()
    );
  }
}
