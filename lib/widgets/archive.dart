import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => print("u clicked on archive"),
        child: Row(
          children: [
            Icon(Icons.archive_outlined,
                size: 33, color: Color.fromRGBO(91, 100, 106, 1.0)),
                SizedBox(width:5),
            Text('Archived',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                ))
          ],
        ));
  }
}
