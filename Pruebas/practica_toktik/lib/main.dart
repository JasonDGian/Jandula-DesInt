import 'package:flutter/material.dart';
import 'package:practica_toktik/config/theme/app_theme.dart';
import 'package:practica_toktik/presentation/providers/home_provider.dart';
import 'package:practica_toktik/presentation/screens/home/home_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ ChangeNotifierProvider(
        // lazy: false,
        create: (_) => HomeProvider() ) ],  // Dentro del ChangeNotifierProvider podemos especificar carga tardía o Lazy. 
      child: MaterialApp(
        title: 'Toktik',
        home: const HomeScreen(),
        theme: AppTheme().getTheme(), // Aplica el tema seleccionado de AppTheme clase nuestra.
      ),
    );
  }
}