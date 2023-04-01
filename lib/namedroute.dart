import 'package:assignment3/slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Gridwithcard.dart';

void main(){
  runApp(MaterialApp(
    home: namedroute(),
    initialRoute: '/',
     routes: {
      ///'/' :(context) =>namedroute(),
    'gridpage': (context) => grid_with_card(),
     'List':(context)=>slider(),
  }
    ,));
}
class namedroute extends StatelessWidget {
  const namedroute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('gridpage');
          }, child: Text("To Grid3 Page")),
          ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed('List');
          }, child: Text("To List Page")),
        ],
      ),
    );
  }
}
