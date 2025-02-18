import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Search extends HookWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = useTextEditingController();

    return 
    TextField(
      controller: textController,
      cursorHeight: 25,
      cursorColor: Colors.black,
      style: TextStyle(
        fontSize: 26,
      ),
      decoration: InputDecoration(
          fillColor: Color.fromRGBO(246, 245, 244, 1.0),
          filled: true,
          hintText: 'Ask Meta AI or Search',
          hintStyle: GoogleFonts.roboto(
            color: Color.fromRGBO(91, 100, 106, 1.0),
            fontSize: 26,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 7, 0),
              child: Icon(Icons.search, size: 35, weight: 600)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          )),
    );
  }
}
