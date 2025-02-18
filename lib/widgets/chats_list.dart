import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:whatsapp_task/widgets/msg_tile.dart';

class ChatList extends HookWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    final chat = useState([
      {
        "sender": "Captain America",
        "message": "Hey, soldier! How's everything going?",
        "time": "10:01 AM",
        "isMe": false
      },
      {
        "sender": "Me",
        "message":
            "Hey Cap! Doing great, just working on my Flutter chat app. 😃",
        "time": "10:02 AM",
        "isMe": true
      },
      {
        "sender": "Captain America",
        "message": "That sounds awesome! Need any help?",
        "time": "10:03 AM",
        "isMe": false
      },
      {
        "sender": "Me",
        "message":
            "Well, I’m trying to get the UI just right. Any suggestions?",
        "time": "10:04 AM",
        "isMe": true
      },
      {
        "sender": "Captain America",
        "message":
            "Make it clean, simple, and easy to use. That’s how SHIELD would do it. 🛡️",
        "time": "10:05 AM",
        "isMe": false
      },
      {
        "sender": "Me",
        "message": "Got it! Thanks, Cap. I’ll make sure the UI is top-notch.",
        "time": "10:06 AM",
        "isMe": true
      },
      {
        "sender": "Captain America",
        "message":
            "Good. And remember, a great chat app isn’t just about the UI, it’s about the **experience**. Keep it fast and secure!",
        "time": "10:07 AM",
        "isMe": false
      },
      {
        "sender": "Me",
        "message": "You really do sound like a leader. 😂",
        "time": "10:08 AM",
        "isMe": true
      },
      {
        "sender": "Captain America",
        "message": "That’s what I do. 😎",
        "time": "10:09 AM",
        "isMe": false
      }
    ]);

    return ListView.builder(
        padding: EdgeInsets.fromLTRB(15, 5, 15, 105),
        itemCount: chat.value.length,
        itemBuilder: (context, index) {
          final currentMsg = chat.value[index];

          return Align(
              alignment: (currentMsg["isMe"] as bool)
                  ? Alignment.centerRight
                  : Alignment.centerLeft,
              child: MsgTile(msg: currentMsg));
        });
  }
}
