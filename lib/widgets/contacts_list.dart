import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp_task/widgets/contact_tile.dart';

class ContactsList extends StatefulWidget {
  const ContactsList({super.key});

  @override
  State<ContactsList> createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  List<Map<String, dynamic>> chatList = [
    {
      "icon": "assets/ironman.jpg",
      "name": "Iron Man",
      "message": "Hey Tony, how's it going?",
      "response": "I am Iron Man.",
      "time": "11:26",
      // "pin": true,
    },
    {
      "icon": "assets/captian.jpg",
      "name": "Captain America",
      "message": "You think you can handle this?",
      "response": "I can do this all day.",
      "time": "09:15",
      "pin": true,
    },
    {
      "icon": "assets/widow.jpg",
      "name": "Black Widow",
      "message": "Do you ever regret your past?",
      "response":
          "At some point, we all have to choose between what the world wants you to be and who you are.",
      "time": "08:30",
      "pin": true,
    },
    {
      "icon": "assets/thor.jpg",
      "name": "Thor",
      "message": "Thor, we need you in battle!",
      "response": "Bring me Thanos!",
      "time": "07:45",
      "pin": false,
    },
    {
      "icon": "assets/hulk.jpg",
      "name": "Hulk",
      "message": "Hulk, are you angry?",
      "response": "HULK SMASH!",
      "time": "06:50",
      "pin": false,
    },
    {
      "icon": "assets/dr.jpg",
      "name": "Doctor Strange",
      "message": "Strange, is there a way to win this battle?",
      "response": "We’re in the endgame now.",
      "time": "05:20",
      "pin": false,
    },
    {
      "icon": "assets/witch.jpg",
      "name": "Scarlet Witch",
      "message": "Wanda, what are you fighting for?",
      "response": "You took everything from me!",
      "time": "04:55",
      "pin": false,
    },
    {
      "icon": "assets/spiderman.jpg",
      "name": "Spider-Man",
      "message": "Peter, what did Uncle Ben always say?",
      "response": "With great power comes great responsibility.",
      "time": "23:40",
      "pin": false,
    },
    {
      "icon": "assets/panther.jpg",
      "name": "Black Panther",
      "message": "Wakanda will always be safe, right?",
      "response": "Wakanda forever!",
      "time": "12:30",
      "pin": false,
    },
    {
      "icon": "assets/loki.jpg",
      "name": "Loki",
      "message": "Loki, do you really think you're better than everyone?",
      "response": "I am burdened with glorious purpose.",
      "time": "21:15",
      "pin": false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    chatList.sort((a, b) => (b['pin'] ?? false)
        ? 1
        : (a['pin'] ?? false)
            ? -1
            : 0);
    //by default it sorts asc if we compare a to b
    // to make it desc we compare b to a

    chatList.sort((a, b) {
      if ((a["pin"] ?? false) == true && (b["pin"] ?? false) == true) {
        int result = DateFormat.Hm()
            .parse(b['time'])
            .compareTo(DateFormat.Hm().parse(a['time']));

        return result > 0
            ? 1
            : result < 0
                ? -1
                : 0;
      }
      if ((a["pin"] ?? false) == false && (b["pin"] ?? false) == false) {
        int result = DateFormat.Hm()
            .parse(b['time'])
            .compareTo(DateFormat.Hm().parse(a['time']));

        return result > 0
            ? 1
            : result < 0
                ? -1
                : 0;
      }
      return 0;
    });

    //jm for 12 hr format
    //Hm for 24 hr format

    // return (Expanded(
    //     child: ListView.builder(
    //         itemCount: chatList.length,
    //         itemBuilder: (context, index) {
    //           final chat = chatList[index];
    //           return InkWell(
    //               onTap: () {
    //                 Navigator.pushNamed(context, '/chat', arguments: chat);
    //               },
    //               child: ChatTile(chat: chat));
    //         })));

    return (SliverList(delegate: SliverChildBuilderDelegate((context, index) {
      final chat = chatList[index];
      return InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/chat', arguments: chat);
          },
          child: ContactTile(chat: chat));
    }, childCount: chatList.length)));
  }
}
