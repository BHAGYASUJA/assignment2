// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home: ProfileUiStackScreen(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class ProfileUiStackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        backgroundColor: Colors.black,
        title: Text('Profile UI'),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/R.jpeg',
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          Positioned(
              top: 140,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.message,
                        size: 30,
                        color: Colors.white,
                      )),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                          'images/bhagya.jpg'),
                      radius: 50,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("tapped");
                    },
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.lightBlue,
                      child: Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              )),
          Positioned(
            child: Container(height: 330),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Column(
              children: [
                Text(
                  'BHAGYA V R',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.grey.shade700),
                ),
                Text(
                  'Flutter Developer',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.blue),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
