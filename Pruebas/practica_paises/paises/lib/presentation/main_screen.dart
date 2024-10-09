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
        backgroundColor: const Color.fromARGB(255, 240, 217, 148),
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

class _CountryBox extends StatelessWidget {
  const _CountryBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    const Color colCol = Colors.amber;

    // Observa los cambios que ocurren en el Country Provider.
    var cp = context.watch<CountryProvider>();

    return SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: size.width * 0.4,
                      color: colCol,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text("Capital:"),
                          Text(cp.capital)
                        ], // Aqui iria la captial.
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                      height: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      width: size.width * 0.4,
                      color: colCol,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(cp.bandera) // Aqui iria la bandera.,
                        ],
                      ),
                    )
                  ],
                )),
                TextFieldInput(), // Clase creada mia.
                const SizedBox(
                  height: 5,
                )
              ],
            )));
  }
}
