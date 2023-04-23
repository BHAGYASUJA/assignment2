import 'package:assignment3/CompanyUI/accountpage.dart';
import 'package:assignment3/CompanyUI/firstpage.dart';
import 'package:assignment3/CompanyUI/second.dart';
import 'package:assignment3/CompanyUI/secondpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) =>  MaterialApp(
      useInheritedMediaQuery: true,
      home: InvoiceMainScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}


class InvoiceMainScreen extends StatefulWidget {
  @override
  State<InvoiceMainScreen> createState() => _InvoiceMainScreenState();
}

class _InvoiceMainScreenState extends State<InvoiceMainScreen> {
  int selectedIndex = 2;

  List<Widget> BottomTabList = [
    firstpage(),
    secondpage(),
    RewardsBottomTab(),
    ProfileBottomTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BottomTabList[selectedIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            onTap: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            selectedIconTheme: const IconThemeData(color: Colors.blue),
            unselectedIconTheme: const IconThemeData(color: Colors.grey),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.widgets_rounded), label: ''),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.gift,
                    size: 20,
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_outlined), label: '')
            ],
          ),
        ));
  }
}