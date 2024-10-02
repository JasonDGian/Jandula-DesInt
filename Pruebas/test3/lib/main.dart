import 'package:flutter/material.dart';
import 'package:test3/config/theme/app_theme.dart';
import 'package:test3/presentation/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme(selectedColor: 5).theme(), // New de tipo inferido.
      title: 'Yes No App',
      home: const ChatScreen(),
    );
  }
}