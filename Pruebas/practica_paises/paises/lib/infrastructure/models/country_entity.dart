// Clase que almacena solo aquello que necesita la aplicacion para funcionar.
// Descarta gran parte de los datos del modelo.

// Definicion.
class CountryEntity {
  String nombre;
  String bandera;
  String capital;

// Constructor parametrizado.
  CountryEntity(
      {required this.nombre, required this.bandera, required this.capital});
}
