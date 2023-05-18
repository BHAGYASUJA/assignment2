import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: noteApp(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class noteApp extends StatefulWidget {


  @override
  State<noteApp> createState() => _noteAppState();
}

class _noteAppState extends State<noteApp> {

 /// List<Map<String, dynamic>> task = [];

  /// tbox = Hive.box('task_box');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu_outlined,size: 15,),
        title: Text('Note App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('images/asset/oo.jpg')
            ],
          )
        ],
      ),
      //body:
      // task.isEmpty
      //     ? const Center(
      //   child: Text(
      //     "No data ",
      //     style: TextStyle(fontSize: 40),
      //   ),
      //
      body:SingleChildScrollView(
        child: Column(
          children: [


        ],

        ),
      )

    );
  }
}
