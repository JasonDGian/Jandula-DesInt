import 'package:dio/dio.dart';
import 'package:incidencias/domain/models/ticket_model.dart';

class GetTickets {
  // Instancia de dio para la peticion http.
  final _dio = Dio();

  // Funcion de promesa para la recuperacion de los datos del API.
  Future<List<TicketModel>> getTicketsList() async {
    // Esto recoge una lista de objetos json.
    final response = await _dio.get('http://localhost:8888/incidencias');

    // Si responde bien la API
    if (response.statusCode == 200) {
      final List<TicketModel> tl = ticketModelListFromJson(response.data);
      return tl;
    } else {
      return [];
    }
  }
}
