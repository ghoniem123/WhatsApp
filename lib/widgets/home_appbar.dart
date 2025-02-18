import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
      child:
          AppBar(scrolledUnderElevation: 0, title: Text('WhatsApp'), actions: [
        IconButton(
            onPressed: () {
              print("u clicked on the camera!");
            },
            icon: const Icon(Icons.camera_alt_outlined,
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
