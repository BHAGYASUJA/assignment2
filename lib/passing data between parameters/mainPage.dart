import 'package:assignment3/passing%20data%20between%20parameters/productlist.dart';
import 'package:flutter/material.dart';

import 'dummydata.dart';

void main(){
  runApp(MaterialApp(
    home: mainpage(),
    routes: {
      'secondPage' :(context)=>productlist(),
    },
  ));
}
class mainpage extends StatelessWidget {
  const mainpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Home"),
        
      ),
      body: ListView(
        padding: EdgeInsets.all(15),
       // children: dummyProducts.map((product) => Image(image:NetworkImage(product["image"]))),.toList(),
          children: dummyProducts
              .map((product) => TextButton(
              onPressed: () => gotoNext(context, product["id"]),
              child: Text(
                "${product["name"]}",
                style: const TextStyle(fontSize: 20),

              )))

              .toList()),
    );
  }
  void gotoNext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondPage", arguments: product);

  }
}
