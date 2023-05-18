import 'package:assignment3/FaceBookUi/HomePage.dart';
import 'package:assignment3/FaceBookUi/items/CustomTabBar.dart';
import 'package:flutter/material.dart';


class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  final List<IconData> _icons = [
    Icons.home,
    Icons.ondemand_video,
   // MdiIcons.accountCircleOutline,
   // MdiIcons.accountGroupOutline,
   // MdiIcons.bellOutline,
    Icons.share_arrival_time,
    Icons.add,
    Icons.account_box,
    Icons.menu,
  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: _icons.length,
        child: Scaffold(
          body: IndexedStack(children: _screens, index: _selectedIndex),
          // bottomNavigationBar: CustomTabBar(
          //   icons: _icons,
          //   selectedIndex: _selectedIndex,
          //   onTap: (index) => {
          //     setState(() => {_selectedIndex = index})
          //   },
          // ),
          bottomNavigationBar: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),
            child: BottomNavigationBar(
              //currentIndex:index,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.business),
                  label: 'Business',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.school),
                  label: 'School',
                ),
              ],
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.amber[800],
              onTap: _onItemTapped,
            ),
          ),
        ));
  }
}
