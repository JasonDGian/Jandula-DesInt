import 'package:flutter/material.dart';
import 'package:paises/config/helpers/get_country.dart';
import 'package:paises/infrastructure/models/country_entity.dart';

// Clase proveedora.
// Extiende de notificador de cambios.
class CountryProvider extends ChangeNotifier {
  // Recuperador de datos API - Clase DIO.
  final GetCountry buscador = GetCountry();

  // Atributos contenidos en el proveedor.
  String banderaP =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGh5WFH8TOIfRKxUrIgJZoDCs1yvQ4hIcppw&s";
  String capitalP = "¡Busca un pais!";
  String nombreP = "Nombre por defecto";

  // Futuro que busca mediante un helper DIO una entidad pais que luego se emplea para
  // asignar de manera un poco McGyver los valores a los atributos del Proveedor.

  Future<void> buscaPais(String nombre) async {
    // Crea una entida countryEntity a partir del buscador DIO (helper llamada API).
    CountryEntity ge = await buscador.getCountryModel(nombre);

    // Asignación de valores a los atributos del proveedor.
    banderaP = ge.bandera;
    capitalP = ge.capital;
    nombreP = ge.nombre;
    notifyListeners(); // Notifica a interesados.
  }
}
