import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDeskTop extends StatefulWidget {
  const MyDeskTop({Key? key}) : super(key: key);

  @override
  State<MyDeskTop> createState() => _MyDeskTopState();
}

class _MyDeskTopState extends State<MyDeskTop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: Text("DeskTop"),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child:Row(
          children: [
            Expanded(child: Column(
              children: [
                Padding(padding: EdgeInsets.all(8.0),
        child:AspectRatio(
        aspectRatio: 16/9,
        child: Container(
          color: Colors.deepPurple,
        ),
      ),
    ),
                Expanded(
                    child:ListView.builder(
                        itemCount: 8,
                        itemBuilder: (context,index){
                          return Padding(
                              padding: EdgeInsets.all(8.0),
                          child: Container(
                            color: Colors.deepPurple[300],
                            height: 120,
                          ),
                          );
                        },
                    ),
                )
              ],
            )
            ),
            Padding(padding: EdgeInsets.all(8.0),
            child: Container(
              width: 200,
              color: Colors.deepPurple[300],
            ),)
          ],
        )
      ),
    );
  }
}
