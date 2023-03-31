import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:sliverr (),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class sliverr extends StatelessWidget {
  //const sliverr({Key? key}) : super(key: key);
  var colors = [900,800,700,600,500,400,300,200,100,50,];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers:[
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("Custom AppBar"),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.account_box,),),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,),),
            ],
            bottom: AppBar(
              title: Container(
                height: 40,
                width: double.infinity,
                color: Colors.lightGreenAccent,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search something",
                    prefixIcon: Icon(Icons.shopping_cart),
                    suffixIcon: Icon(Icons.camera_alt)
                  ),
                ),
              ),
            ),
          ),
          SliverList(delegate: SliverChildBuilderDelegate((ctx,index){
            return Container(
              height: 80,
              child: Text(""),
              color: Colors.pink[colors[index]],
            );

          },
              childCount: colors.length
          ),
          )
        ],
      ),
    );
  }
}
