import 'package:assignment3/passing%20data%20between%20parameters/dummydata.dart';
import 'package:flutter/material.dart';

class productlist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    ///fetch id from the previous Page
    final id =ModalRoute.of(context)?.settings.arguments;

    ///fetch the product from dummy data corresponding to the id from the previous page
    final product = dummyProducts.firstWhere((product)=>product['id'] ==id);
    return Scaffold(
      appBar: AppBar(
        title: Text("Product"),
      ),
      body: Padding(padding: EdgeInsets.all(20),
      child:ListView(
        children: [
        SizedBox(
        height: 100,
        width: 100,
          child:Image.network(product["image"]),
        ),
          SizedBox(
            height: 100,
            width: 100,
            child:Image.network(product["image1"]),
          ),
          Text("${product["name"]}",style: TextStyle(fontSize: 30),),
          Text("${product["description"]}")
        ],
      )),
    );
  }
}
