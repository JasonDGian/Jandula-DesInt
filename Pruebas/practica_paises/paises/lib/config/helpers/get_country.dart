import 'package:dio/dio.dart';
import 'package:paises/infrastructure/models/country_entity.dart';
import 'package:paises/infrastructure/models/country_model.dart';

// Clase que instancia un objeto DIO para atacar la API y convertir
// la respuesta en un objeto CountryModel basado en el modelo generado
// mediante QuicktypeIO basado en la respeusta de la misma API.
class GetCountry {
  // Crea un objeto DIO que se usará para atacar la API.
  final _dio = Dio();

  Future<CountryEntity> getCountryModel(String nombre) async {
    // Asigna la respuesta de la API a una variable.
    final response =
        await _dio.get("https://restcountries.com/v3.1/name/$nombre");

    if (response.statusCode == 200)
    // Si la respuessta obtenida es OK 200 entonces...response
    {
      // Empleando el metodo "From Json" del modelo CountryModel
      // rellenamos las propiedades del nuevo objeto CountryModel.
      final countryModel = CountryModel.fromJson(response.data[0]);

      // Construye una entidad con los datos sacados que nos importan.
      return CountryEntity(
          nombre: countryModel.name.common,
          bandera: countryModel.flags.png,
          capital: countryModel.capital.first);
    }

    throw UnimplementedError();
  }
}
