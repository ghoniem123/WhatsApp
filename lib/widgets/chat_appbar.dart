import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatAppBar extends StatelessWidget {
  final Map<String, dynamic> chatData;
  const ChatAppBar({super.key, required this.chatData});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 35, 10, 10),
      child: AppBar(
          backgroundColor: Colors.white,
          scrolledUnderElevation: 0,
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
    );
  }
}
