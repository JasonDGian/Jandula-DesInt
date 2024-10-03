import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test3/config/theme/app_theme.dart';
import 'package:test3/presentation/providers/chat_provider.dart';
import 'package:test3/presentation/screens/chat/chat_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) { ChartProvider(); } )], // el guión representa el contexto pero indica que no lo usa.
      child: MaterialApp(
        theme: AppTheme(selectedColor: 1).theme(), // New de tipo inferido.
        title: 'Yes No App',
        home: const ChatScreen(),
      ),
    );    
  }
}