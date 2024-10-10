import 'package:flutter/material.dart';
import 'package:paises/presentation/providers/country_provider.dart';
import 'package:paises/widgets/text_field_input.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 148, 234, 240),
        leading: const Icon(Icons.flag),
        title: const Text("Paises y banderas!"),
        actions: const [
          Icon(Icons.flag),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: const _CountryBox(),
    );
  }
}

// Caja que contiene
class _CountryBox extends StatelessWidget {
  const _CountryBox();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Color colCol = Colors.amber;

    final negrita = TextStyle(fontWeight: FontWeight.w700);

    // Observa los cambios que ocurren en el Country Provider.
    var countryProvider = context.watch<CountryProvider>();

    return SafeArea
    (
      child: Padding
      (
        padding: const EdgeInsets.all(5),
        child: Column
        (
          children: 
          [
            Expanded
            (
                // Fila de widgets - ROW
                child: Row
                (
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: 
                  [
                    // Contenedor del nombre y capital.
                    Container
                    (
                      margin: const EdgeInsets.all(10),
                      width: size.width * 0.4,
                      color: colCol,
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: 
                        [
                          // Texto "NOMBRE" en panel izquierdo.
                          Text("Nombre:", style: negrita),
                          // Nombre del pais devuelto por provider.
                          Text(countryProvider.nombre),
                          // Caja de separación entre textos.
                          const SizedBox(height: 20),
                          // Texto "CAPITAL" en el panel izquiero.
                          Text("Capital:", style: negrita),
                          // Capital del pais devuelta por provider.
                          Text(countryProvider.capital)
                        ],
                      ),
                    ),

                    // Contenedor para bandera.
                    Container
                    (
                      margin: const EdgeInsets.all(10),
                      width: size.width * 0.4,
                      color: colCol,
                      child: Column
                      (
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      children: 
                        [
                          Image.network
                          (
                              countryProvider.bandera
                          ) // Aqui iria la bandera.,
                        ],
                      ),
                    )
                  ],
                )
              ),
            // Objeto de input de texto personalizado.
            const TextFieldInput(),
            // Caja para crear espacio entre campo texto y marco.
            const SizedBox
            (
              height: 5,
            )
          ],
        )
      )
    );
  }
}
