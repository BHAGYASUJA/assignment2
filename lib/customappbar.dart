import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> const MaterialApp(
      useInheritedMediaQuery: true,
      home:customappbar (),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class customappbar extends StatelessWidget {
  const customappbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Custom app Bar "),
        backgroundColor: Colors.pink.withOpacity(.3),
        elevation: 0,
      ),
      // body: Image.network("https://www.pexels.com/photo/wood-love-flowers-summer-15943127/",
      //   width: double.infinity,
      //   height: double.infinity,),
      body: Image.asset("images/flower.jpg",fit: BoxFit.fill,),

    );
  }
}
