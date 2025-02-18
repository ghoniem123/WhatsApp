import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_task/chat_screen_body.dart';
import 'package:whatsapp_task/chat_text_input.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});
  //supposed to receive the user id and fetch its data from the db using it but this is a demo so static

  @override
  Widget build(BuildContext context) {
    final chatData =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
        //receive the chat data from the prev screen as it is static not using a useID from the DB

    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(110),
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 35, 10, 10),
            child: AppBar(
                backgroundColor: Colors.white,
                elevation: 0,
                leading: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 36,
                    ),
                    onPressed: () => Navigator.pop(context)),
                title: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage(chatData['icon']),
                      ),
                    ),
                    Expanded(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(chatData['name'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600)),
                          Text('online',
                              style: GoogleFonts.roboto(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600))
                        ]))
                  ],
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: IconButton(
                        onPressed: () {
                          print("u clicked on the video cam!");
                        },
                        icon: const Icon(Icons.videocam_outlined,
                            color: Colors.black, size: 42)),
                  ),
                  IconButton(
                      onPressed: () {
                        print("u clicked on the phone!");
                      },
                      icon: const Icon(Icons.call_outlined,
                          color: Colors.black, size: 36)),
                  Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: IconButton(
                          onPressed: () {
                            print('u click on the kbab menu!');
                          },
                          icon: const Icon(
                            Icons.more_vert_rounded,
                            color: Colors.black,
                            size: 34,
                          )))
                ]),
          ),
        ),
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/avengers.jpg'),
                    fit: BoxFit.cover)),
            child: Column(children: [
              Expanded(child: ChatScreenBody()),
              
              ChatTextInput(),

              // ])
            ])));
  }
}
