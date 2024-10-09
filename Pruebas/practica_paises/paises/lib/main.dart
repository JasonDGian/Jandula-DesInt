import 'package:flutter/material.dart';
import 'package:paises/presentation/main_screen.dart';
import 'package:paises/presentation/providers/country_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => CountryProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Paises y banderas!',
          home: MainScreen()),
    );
  }
}
