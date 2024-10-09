import 'package:flutter/material.dart';
import 'package:paises/config/helpers/get_country.dart';
import 'package:paises/infrastructure/models/country_entity.dart';

// Clase proveedora que extiende del notificador de cambios.
class CountryProvider extends ChangeNotifier {
  // Clase Buscador instanciado.
  final GetCountry gc = GetCountry();

  String bandera = "Banera por defecto";
  String capital = "Capital por defecto";
  String nombre = "Nombre por defecto";

  Future<void> buscaPais(String nombre) async {
    CountryEntity ge = await gc.getCountryModel(nombre); // busca con DIO.

    bandera = ge.bandera;
    capital = ge.capital;
    nombre = ge.nombre;
    print(bandera.toString() + capital + nombre);
    notifyListeners(); // Notifica a interesados.
  }
}
