import 'package:flutter/material.dart';
import 'package:incidencias/config/helper/get_tickets.dart';
import 'package:incidencias/domain/models/ticket_model.dart';

class TicketProvider extends ChangeNotifier {
  List<TicketModel> ticketsList = [];

  updateTicketsList() async {
    ticketsList = await GetTickets().getTicketsList();
    notifyListeners();
  }
}
