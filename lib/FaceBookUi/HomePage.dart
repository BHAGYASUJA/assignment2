import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _currentIndex = 0;
  Color butt = Colors.pink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: [
          const BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.blueAccent),
              label: 'Home',
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              icon: Icon(Icons.people, color: Colors.grey[700]),
              label: 'Peoples',
              backgroundColor: Colors.white),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.people_alt_outlined, color: Colors.grey[700]),
          //     title: Text(""),
          //     backgroundColor: Colors.white),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.tv, color: Colors.grey[700]),
          //     title: Text(""),
          //     backgroundColor: Colors.white),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.notifications, color: Colors.grey[700]),
          //     title: Text(""),
          //     backgroundColor: Colors.white),
          // BottomNavigationBarItem(
          //     icon: Icon(Icons.more_vert_outlined, color: Colors.grey[700]),
          //     title: Text(""),
          //     backgroundColor: Colors.white),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
