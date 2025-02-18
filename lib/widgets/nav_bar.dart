import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NavBar extends HookWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final index = useState(0);

    void onTap(int tappedIndex) {
      index.value = tappedIndex;
    }

    return (BottomNavigationBar(
        elevation: 10,
        iconSize: 35,
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(
          color: Color.fromRGBO(0, 98, 59, 1.0),
        ),
        selectedLabelStyle: TextStyle(
            color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
        unselectedItemColor: Colors.black,
        unselectedLabelStyle: TextStyle(
            fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: index.value,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
          BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Updates'),
          BottomNavigationBarItem(
              icon: Icon(Icons.groups), label: 'Communities'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ]));
  }
}
