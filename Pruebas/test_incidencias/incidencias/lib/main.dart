import 'package:flutter/material.dart';
import 'package:incidencias/presentation/screens/main_screen.dart';
import 'package:incidencias/providers/ticket_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => TicketProvider())],
      child: MaterialApp(
        title: 'Incidencias DJG',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Incidencias - DJG'),
            ),
            body: const MainScreen()),
      ),
    );
  }
}
