import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:main1 (),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class main1 extends StatelessWidget {
  const main1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:GridView(
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing:20,
            mainAxisSpacing: 20,
            mainAxisExtent: 100,
            crossAxisCount: 2,),

            children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.blue,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.home,size: 50,color: Colors.white,),
                  Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.beach_access_outlined,size: 50,color: Colors.white,),
                  Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),),

            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.green,),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.camera_outdoor_outlined,size: 50,color: Colors.white,),
                  Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                ],),),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.star_half_sharp,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),



              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orangeAccent,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_road_outlined,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),



              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purple,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.contact_mail,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),




              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.purpleAccent,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.call,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),



              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreen,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.mail,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),



              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.yellow,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.flag_sharp,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.orange,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.lens_blur,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.macro_off,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),

              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.lightGreenAccent,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.local_hospital_outlined,size: 50,color: Colors.white,),
                    Text("Heart Shaker",style: TextStyle(color: Colors.white,fontSize: 30),)
                  ],),),
          ]
        ),

    );
  }
}
