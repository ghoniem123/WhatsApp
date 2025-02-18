import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChatTile extends StatefulWidget {
  final Map<String, dynamic> chat;
  const ChatTile({super.key, required this.chat});

  @override
  State<ChatTile> createState() => _ChatTileState();
}

class _ChatTileState extends State<ChatTile> {


  @override
  Widget build(BuildContext context) {
    DateTime time = DateFormat.Hm().parse(widget.chat['time']!);
    String time_12Hr = DateFormat.jm().format(time);

    return (Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: LayoutBuilder(builder: (context, constraints) {
          double rowWidth = constraints.maxWidth;
          double textWidth = rowWidth * 0.5;

          return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(children: [
                  Column(
                    children: [
                      CircleAvatar(
                          radius: 40,
                          child: ClipOval(
                              child: Image.asset(
                            widget.chat['icon'],
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          )))
                    ],
                  ),
                  SizedBox(width: 20),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(widget.chat['name'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30,
                          )),
                      SizedBox(
                          width: textWidth,
                          child: Text(widget.chat['response']!,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 23,
                              )))
                    ],
                  ),
                ]),
                
                   Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(time_12Hr,
                            style: TextStyle(
                              fontSize: 21,
                            )),
                        SizedBox(height: 15,),
                        (widget.chat['pin']??false)?Icon(Icons.push_pin_rounded, size: 32): SizedBox(height:32)
                      ],
                    ),
              ]);
        })));
  }
}
