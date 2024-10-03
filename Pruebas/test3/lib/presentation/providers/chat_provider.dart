import 'package:flutter/material.dart';
import 'package:test3/domain/entities/message.dart';

class ChartProvider extends ChangeNotifier {

  List<Message> messages = [ 
    
    Message(
      text:"Hello", fromWho: FromWho.hers, imageUrl: "https://www.google.com/imgres?q=jesus&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F9%2F9a%2FSagrado_Cora%25C3%25A7%25C3%25A3o_de_Jesus_-_escola_portuguesa%252C_s%25C3%25A9culo_XIX.png&imgrefurl=https%3A%2F%2Fes.wikipedia.org%2Fwiki%2FSagrado_Coraz%25C3%25B3n_de_Jes%25C3%25BAs&docid=sy4uJtsZfUk6WM&tbnid=DpaM2sgYupbxwM&vet=12ahUKEwjPvNO41PGIAxVI0QIHHetbLjoQM3oECBoQAA..i&w=895&h=1200&hcb=2&ved=2ahUKEwjPvNO41PGIAxVI0QIHHetbLjoQM3oECBoQAA"
    ),
    
    Message(
      text:"Hello", fromWho: FromWho.my, imageUrl: null
    )

   ]; 

   Future<void> sendMessage( String text ) async {
   // messages.add(value);
   }

}