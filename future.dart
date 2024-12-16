import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Configura la aplicación principal con una pantalla inicial.
    return const MaterialApp(
      home: FutureExampleScreen(),
    );
  }
}

class FutureExampleScreen extends StatelessWidget {
  const FutureExampleScreen({super.key});

  // Simula una operación asincrónica que tarda 2 segundos en completarse.
  Future<String> _fetchData() async {
    return await Future.delayed(
      const Duration(seconds: 2),
      () => 'Data Loaded', // El resultado de la operación.
    );
  }

  @override
  Widget build(BuildContext context) {
    // Usa un FutureBuilder para manejar el estado de un Future.
    return Scaffold(
      appBar: AppBar(title: const Text('FutureBuilder Example')),
      body: Center(
        child: FutureBuilder<String>(
          future: _fetchData(), // Future que estamos observando.
          builder: (context, snapshot) {
            // snapshot contiene el estado actual del Future.
            if (snapshot.connectionState == ConnectionState.waiting) {
              // Muestra un indicador de carga mientras el Future está pendiente.
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              // Muestra un mensaje de error si el Future falla.
              return const Text('Error loading data');
            } else if (snapshot.hasData) {
              // Muestra el resultado si el Future se completa con éxito.
              return Text(snapshot.data!);
            } else {
              // Caso improbable: Future no tiene datos ni error.
              return const Text('No data available');
            }
          },
        ),
      ),
    );
  }
}
