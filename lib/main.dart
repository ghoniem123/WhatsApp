import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp_task/chat_page.dart';
import './search.dart';
import './chat_list.dart';
import 'nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp Task',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              titleTextStyle: GoogleFonts.roboto(
                color: Color.fromRGBO(0, 173, 89, 1),
                fontSize: 37,
                fontWeight: FontWeight.bold,
              )),
        ),
        // home: const MyHomePage(),
        initialRoute: '/',
        routes: {
          '/': (context) => MyHomePage(),
          '/chat': (context) => ChatPage(),
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 35, 10, 0),
          child: AppBar(elevation: 0, title: Text('WhatsApp'), actions: [
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
        ),
      ),
      body: Container(
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    pinned: false,
                    floating: false,
                    snap: false,
                    expandedHeight: 80,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      // collapseMode: CollapseMode.pin,
                      background: SafeArea(child: Search()),
                    ),
                  ),
                  // SliverAppBar(
                  //   pinned: false,
                  //   floating: false,
                  //   snap: false,
                  //   expandedHeight: 80,
                  //   backgroundColor: Colors.white,
                  //   flexibleSpace: FlexibleSpaceBar(
                  //     // collapseMode: CollapseMode.pin,
                  //     background: SafeArea(
                  //         child: TabBar(
                  //       tabs: [
                  //         Tab( text: "All"),
                  //         Tab( text: "Unread"),
                  //         Tab( text: "Groups"),
                  //       ],
                  //     )),
                  //   ),
                  // ),
                  SliverAppBar(
                    pinned: false,
                    floating: false,
                    snap: false,
                    expandedHeight: 40,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      // collapseMode: CollapseMode.pin,
                      background: SafeArea(
                          child: Row(
                        children: [
                          IconButton(
                            onPressed: () => print('u just hit archive!'),
                            icon: Icon(Icons.archive_outlined,
                                size: 33,
                                color: Color.fromRGBO(91, 100, 106, 1.0)),
                          ),
                          Text('Archived',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                              ))
                        ],
                      )),
                    ),
                  ),
                  ChatList()
                ],
              )))
      // Padding(
      //   padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.start,
      //       children: <Widget>[
      //         SizedBox(height: 10),
      //         Search(),
      //         ChatList(),
      //       ],
      //     ),
      //   ),
      // ),

      ,
      floatingActionButton: FloatingActionButton.large(
          onPressed: () => print("take easy dude!!"),
          backgroundColor: Color.fromRGBO(0, 173, 89, 1.0),
          child: Icon(Icons.add_comment, color: Colors.white, size: 42)),
      bottomNavigationBar: NavBar(),
    );
  }
}
