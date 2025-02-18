import 'package:flutter/material.dart';
import 'package:whatsapp_task/widgets/chat_appbar.dart';
import 'package:whatsapp_task/widgets/chats_list.dart';
import 'package:whatsapp_task/widgets/msg_input.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  //supposed to receive the user id and fetch its data from the db using it but this is a demo so static

  @override
  Widget build(BuildContext context) {
    final chatData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    //receive the chat data from the prev screen as it is static not using a useID from the DB

    return Scaffold(
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(110),
            child: ChatAppBar(chatData: chatData),
        ),
            body: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/avengers.jpg'),
                        fit: BoxFit.cover)),
                child: Column(children: [
                  Expanded(child: ChatList()),

                  MsgInput(),

                  // ])
                ])));
  }
}
