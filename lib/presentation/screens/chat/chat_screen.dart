import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';

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
        title: const Text('Adam')),
        body: _ChatView()
    );
  }
}

class _ChatView extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index){
              return const MyMessageBubble();
            })),
            const Text('Hola')
          ],
        ),
      ),
    );
  }
}