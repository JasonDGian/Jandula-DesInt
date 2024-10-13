import 'package:flutter/material.dart';
import 'package:incidencias/domain/models/ticket_model.dart';

/*
 * Este widget recibe una entidad incidencia y a partir de eso
 * construye una fila con la informacion relevante. 
 */
class TicketRow extends StatelessWidget {
  final TicketModel ticket;
  final Color colorRow;

  const TicketRow({super.key, required this.ticket, required this.colorRow});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 50,
        color: colorRow,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("ID"), Text(ticket.mId.toString())],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("Numero Aula"), Text(ticket.mNumeroAula)],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Fecha"),
                Text(ticket.mFechaIncidencia.toString())
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Correo Docente"),
                Text(ticket.mCorreoDocente)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Descripcion incidencia"),
                Text(ticket.mDescripcionIncidencia)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Estado incidencia."),
                Text(ticket.mEstadoIncidencia)
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [const Text("COMENTARIO"), Text(ticket.mComentario)],
            ),
          ],
        ),
      ),
    );
  }
}
