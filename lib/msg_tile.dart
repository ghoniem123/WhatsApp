import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MsgTile extends StatelessWidget {
  final Map<String, dynamic> msg;

  const MsgTile({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width * 0.7,
        ),
        child: Container(
            // width: MediaQuery.sizeOf(context).width*0.7,
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: msg['isMe']
                  ? Color.fromRGBO(208, 254, 207, 1.0)
                  : Colors.white,
            ),
            child: Padding(
                padding: EdgeInsets.all(10),
                child: RichText(
                    text: TextSpan(
                  style: GoogleFonts.roboto(
                      fontSize: 23,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      textBaseline: TextBaseline.alphabetic),
                  children: [
                    TextSpan(text: msg['message']),
                    
                    WidgetSpan(
                        // alignment: PlaceholderAlignment.baseline,
                        // baseline: TextBaseline.alphabetic,
                        child: Align(
                            alignment: Alignment(1.15, 0),
                            child: SizedBox(
                              width: 125,
                              child: Row(
                                // mainAxisSize: MainAxisSize.min,
                                // crossAxisAlignment: CrossAxisAlignment.baseline,
                                // textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    msg['time'],
                                    style: GoogleFonts.roboto(
                                      fontSize: 18,
                                      color: const Color.fromRGBO(
                                          114, 145, 123, 1.0),
                                    ),
                                  ),
                                  const SizedBox(width: 5),
                                  const Icon(
                                    Icons.done_all_rounded,
                                    color: Color.fromRGBO(0, 137, 252, 1.0),
                                    size: 27,
                                  ),
                                ],
                              ),
                            )))
                  ],
                ))

                // child: Row(
                //     mainAxisSize: MainAxisSize.min,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: <Widget>[
                //       Flexible(
                //           child: Text(msg['message'],
                //               style: GoogleFonts.roboto(
                //                   fontSize: 20, fontWeight: FontWeight.w600))),

                //       ConstrainedBox(
                //           constraints: BoxConstraints(maxHeight: 23),
                //           child: Row(children: <Widget>[
                //             Text(msg['time'],
                //                 style: GoogleFonts.roboto(
                //                     fontSize: 18,
                //                     color: Color.fromRGBO(114, 145, 123, 1.0))),
                //             SizedBox(width: 5),
                //             Icon(Icons.done_all_rounded,
                //                 color: Color.fromRGBO(0, 137, 252, 1.0))
                //           ]))
                //     ])
                )));
  }
}
