import 'package:flutter/material.dart';
import 'package:incidencias/providers/ticket_provider.dart';
import 'package:incidencias/widgets/ticket_row.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ticketProvider = context.watch<TicketProvider>();

    ticketProvider.updateTicketsList();

    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: ticketProvider.ticketsList.length,
            itemBuilder: (context, index) {
              // Recoge el ticket que toca desde la lista de tickets.
              final ticketP = ticketProvider.ticketsList[index];
              return Container(
                margin: const EdgeInsets.all(5),
                color: const Color.fromARGB(255, 255, 79, 79),
                height: 50,
                // Introduce el ticket en un ticketrow.
                child: TicketRow(
                  ticket: ticketP,
                  colorRow: (index % 2 == 0
                      ? const Color.fromARGB(255, 251, 252, 228)
                      : const Color.fromARGB(255, 208, 230, 245)),
                ),
              );
            },
          )),
          Container(
            color: Colors.amber,
            padding: const EdgeInsets.all(20),
            child: const Text("Contenedor"),
          )
        ],
      ),
    ));
  }
}
