import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/widgets/chat/her_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/chat/my_message_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(5.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://styles.redditmedia.com/t5_2thys/styles/communityIcon_w1ag5is945881.jpg?width=256&s=7cb70452ccd0e5415a4f8b65e2231acd2bc4304b'),
          ),
        ),
        title: const Text('Persona X'),
        centerTitle: false, //Para centrar el titulo
      ), //
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //El Widget Column sirve para poner Widgets uno encima de otro
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: ListView.builder(
              //itemCount:Cuantos elementos tengo
              itemCount: 100,
              //itemBuilder: La forma como va a construir los elementos
              itemBuilder: (context, index) {
                return (index %2==0)
                ?const HerMessageBubble()
                : const MyMessageBubble();
              },
            )),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
