
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> const MaterialApp(
      useInheritedMediaQuery: true,
      home: profilee(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profilee extends StatelessWidget {
  const profilee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title:
        Text("Profile",
          textAlign:TextAlign.center,
          style: TextStyle(
          fontWeight: FontWeight.bold,
            fontSize: 35,
            fontStyle:FontStyle.italic,
        ),),
        leading: IconButton (
          icon: const Icon(Icons.menu,color: Colors.black,size: 29,),
          onPressed: () {
          },),
        actions: [
          IconButton (
            icon: const Icon(Icons.more_vert,color: Colors.black,size: 29,),
            onPressed: () {
            },),],
      ),
        body: Stack(
          clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
              height:250,
              //width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("images/R.jpeg"),
                    fit: BoxFit.cover,
                  ),
              ),),
          Positioned(
                bottom: -20,
                 left: 0,
                  right: 0,
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Container(
                        // width: 100,
                        //  height: 100,
                     child: CircleAvatar(
                       backgroundColor: Colors.red,
                       radius: 30,
                       child: Icon(Icons.message,color: Colors.white,size: 30,),
                     ),),
                     Container(
                      width: 100,
                      height:100,
                       // alignment: Alignment.topLeft,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(200),
                         image: DecorationImage(image: AssetImage("images/bhagya.jpg"),
                           fit: BoxFit.cover,
                         ),
                       ),),
                     CircleAvatar(
                     radius: 30,
                     child: Icon(Icons.add,color: Colors.white,size: 30,),
                   ),]
                 ),
               ),

          Positioned(
            top: 150,
            bottom: -9,
            right: 150,
            child:
            Column(
              children:[
                SizedBox(
              height: 50,),
            Text("Bhagya V R \n Flutter Developer", style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey.shade700),
            ),
            // Expanded(child:
            // Text(
            //         'Flutter Deveeloper',
            //         style: TextStyle(
            //             fontWeight: FontWeight.w400,
            //             fontSize: 16,
            //             color: Colors.blue),)
            // )
            ]
            )
          ,)

              //
        ],
      ),
    );
  }
}
