import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(padding: 
         EdgeInsets.all(4.0),
         child: CircleAvatar(
          backgroundImage: NetworkImage('https://media.diariolasamericas.com/p/5b042d372d43eb53dbc957561341ea51/adjuntos/216/imagenes/100/197/0100197767/adam-levine-afp.jpg'),

         ),
        ),
        title: const Text('Chat'),
        centerTitle: true),
    );
  }
}