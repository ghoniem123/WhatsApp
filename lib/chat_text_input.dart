import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatTextInput extends HookWidget {
  const ChatTextInput({super.key});
  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return Padding(
        padding: EdgeInsets.fromLTRB(3, 5, 3, 27),
        child: Row(
          children: [
            Expanded(
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                     padding: EdgeInsets.fromLTRB(0,0,10,0) ,
                    child:Row(children: [
                      IconButton(
                          icon: Icon(Icons.add, size:40, color: Color.fromRGBO(90, 99, 104, 1.0)),
                          onPressed: () =>
                              print('u clicked on the add button in the chat')),
                      Expanded(
                        child: TextField(
                          controller: textController,
                          cursorHeight: 25,
                          cursorColor: Colors.black,
                          style: TextStyle(
                            fontSize: 27,
                          ),
                          decoration: InputDecoration(
                            hintText: 'Message',
                            hintStyle: GoogleFonts.roboto(
                                fontSize: 27,
                                color: Color.fromRGBO(90, 99, 104, 1.0),
                                fontWeight: FontWeight.w500),
                            // fillColor: Colors.white,
                            // filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.attach_file, size:34, color: Color.fromRGBO(90, 99, 104, 1.0)),
                          onPressed: () => print(
                              'u clicked on the attach button in the chat')),
                      IconButton(
                          icon: Icon(Icons.camera_alt_outlined, size:34, color: Color.fromRGBO(90, 99, 104, 1.0)),
                          onPressed: () => print(
                              'u clicked on the camera button in the chat'))
                    ])))),
            Container(
                margin: EdgeInsets.only(left: 10),
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(0, 172, 90, 1.0),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.mic, color: Colors.white, size: 38),
                  onPressed: () => print("u hit the mic!!"),
                ))
          ],
        ));
  }
}
