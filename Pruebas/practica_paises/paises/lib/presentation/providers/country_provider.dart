import 'package:flutter/material.dart';
import 'package:paises/config/helpers/get_country.dart';
import 'package:paises/infrastructure/models/country_entity.dart';

// Clase proveedora.
// Extiende de notificador de cambios.
class CountryProvider extends ChangeNotifier {
  // Recuperador de datos API - Clase DIO.
  final GetCountry buscador = GetCountry();

  // Atributos contenidos en el proveedor.
  String bandera = "";
  String capital = "¡Busca un pais!";
  String nombre = "Nombre por defecto";

  // Futuro que busca mediante un helper DIO una entidad pais que luego se emplea para
  // asignar de manera un poco McGyver los valores a los atributos del Proveedor.
  
  Future<void> buscaPais(String nombre) async {
    // Crea una entida countryEntity a partir del buscador DIO (helper llamada API).
    CountryEntity ge = await buscador.getCountryModel(nombre);

    // Asignación de valores a los atributos del proveedor.
    this.bandera = ge.bandera;
    this.capital = ge.capital;
    this.nombre = ge.nombre;
    notifyListeners(); // Notifica a interesados.
  }
}
