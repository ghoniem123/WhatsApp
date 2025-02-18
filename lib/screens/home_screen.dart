import 'package:flutter/material.dart';
import 'package:whatsapp_task/widgets/archive.dart';
import 'package:whatsapp_task/widgets/contacts_list.dart';
import 'package:whatsapp_task/widgets/home_appbar.dart';
import 'package:whatsapp_task/widgets/nav_bar.dart';
import 'package:whatsapp_task/widgets/search.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: false,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: HomeAppBar(),
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
                  SliverAppBar(
                    pinned: false,
                    floating: false,
                    snap: false,
                    expandedHeight: 40,
                    backgroundColor: Colors.white,
                    flexibleSpace: FlexibleSpaceBar(
                      // collapseMode: CollapseMode.pin,
                      background: SafeArea(child: Archive()),
                    ),
                  ),
                  ContactsList()
                ],
              ))),
      floatingActionButton: FloatingActionButton.large(
          onPressed: () => print("take easy dude!!"),
          backgroundColor: Color.fromRGBO(0, 173, 89, 1.0),
          child: Icon(Icons.add_comment, color: Colors.white, size: 42)),
      bottomNavigationBar: NavBar(),
    );
  }
}
