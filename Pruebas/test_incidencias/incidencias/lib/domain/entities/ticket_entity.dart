// Entidad de incidencia o ticket.
class TicketEntity {
  final int id;
  final String numAula;
  final String correoDocente;
  final DateTime fechaIncidencia;
  final String descripcion;
  final String estado;
  final String comentario;

  TicketEntity(
      {required this.id,
      required this.numAula,
      required this.correoDocente,
      required this.fechaIncidencia,
      required this.descripcion,
      required this.estado,
      required this.comentario});
}
