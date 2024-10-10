import 'package:flutter/material.dart';
import 'package:paises/presentation/main_screen.dart';
import 'package:paises/presentation/providers/country_provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Widget que proporciona
    return MultiProvider(
      // Providers pasados al arbol de widgets.
      providers: [
        // Provider extiende del tipo "notificador de cambios"
        ChangeNotifierProvider(
            // Instancia el proveedor por primera vez, descarta el 'contexto' con '_'.
            create: (_) => CountryProvider())
      ],

      // Widget principal que se invoca al lanzar la aplicacion.
      child: const MaterialApp(

          // Desactiva el cartel de 'debug'.
          debugShowCheckedModeBanner: false,

          // Titulo de la pestaña de la pagina.
          title: 'Paises y banderas!',

          // Invoca a la pantalla principal.
          home: MainScreen()),
    );
  }
}
