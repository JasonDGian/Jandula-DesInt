// To parse this JSON data, do
//
//     final ticketModel = ticketModelFromJson(jsonString);

import 'dart:convert';

// List<TicketModel> ticketModelListFromJson(String str) => List<TicketModel>.from(
//     json.decode(str).map((x) => TicketModel.fromJson(x)));

List<TicketModel> ticketModelListFromJson(List<dynamic> jsonList) {
  return List<TicketModel>.from(jsonList.map((x) => TicketModel.fromJson(x)));
}

String ticketModelToJson(List<TicketModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TicketModel {
  int mId;
  String mNumeroAula;
  String mCorreoDocente;
  DateTime mFechaIncidencia;
  String mDescripcionIncidencia;
  String mEstadoIncidencia;
  String mComentario;

  TicketModel({
    required this.mId,
    required this.mNumeroAula,
    required this.mCorreoDocente,
    required this.mFechaIncidencia,
    required this.mDescripcionIncidencia,
    required this.mEstadoIncidencia,
    required this.mComentario,
  });

  factory TicketModel.fromJson(Map<String, dynamic> json) => TicketModel(
        mId: json["id"],
        mNumeroAula: json["numeroAula"],
        mCorreoDocente: json["correoDocente"],
        mFechaIncidencia: DateTime.parse(json["fechaIncidencia"]),
        mDescripcionIncidencia: json["descripcionIncidencia"],
        mEstadoIncidencia: json["estadoIncidencia"],
        mComentario: json["comentario"],
      );

  Map<String, dynamic> toJson() => {
        "id": mId,
        "numeroAula": mNumeroAula,
        "correoDocente": mCorreoDocente,
        "fechaIncidencia": mFechaIncidencia.toIso8601String(),
        "descripcionIncidencia": mDescripcionIncidencia,
        "estadoIncidencia": mEstadoIncidencia,
        "comentario": mComentario,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
