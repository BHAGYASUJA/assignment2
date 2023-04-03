import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> const MaterialApp(
      useInheritedMediaQuery: true,
      home: profile(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton (
        icon: const Icon(Icons.arrow_back,color: Colors.black,),
    onPressed: () {
    },),
        actions: [
          IconButton (
            icon: const Icon(Icons.menu,color: Colors.black,),
            onPressed: () {
            },),],
      ),

        body:SingleChildScrollView(
             child:Container(
              alignment: Alignment.center,
                child: Padding(
                 padding: const EdgeInsets.all(10.0),
                  child: Column(
                  children:  [
                      const CircleAvatar(radius: 75,backgroundImage: AssetImage('images/bhagya.jpg'),),
                    const Text("BHAGYA V R",
                      style:TextStyle(
                          fontSize: 30,
                          fontStyle: FontStyle.italic,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const Text("Flutter Developer",
                      style: TextStyle(
                          fontSize: 15 ,
                          fontWeight: FontWeight.w500
                      ),
                    ),
                    Card(
                      elevation: 0,
                      margin: const EdgeInsets.symmetric(horizontal: 30.0,vertical: 12.0),
                      child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                     child: Row(
                     children: [

                       IconButton (
                         icon: const FaIcon(FontAwesomeIcons.facebook),
                         onPressed: () { print("Pressed"); },
                         color: Colors.greenAccent,
                         highlightColor: Colors.amberAccent,
                         iconSize: 50,
                       ),
                       IconButton(
                         // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                         icon: const FaIcon(FontAwesomeIcons.twitter),
                         onPressed: () { print("Pressed"); },
                         color: Colors.greenAccent,
                         highlightColor: Colors.amberAccent,
                         iconSize: 50,
                       ),
                       IconButton(
                         // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                         icon: const FaIcon(FontAwesomeIcons.instagram),
                         onPressed: () { print("Pressed"); },
                         color: Colors.greenAccent,
                         highlightColor: Colors.amberAccent, //<-- SEE HERE
                         iconSize: 50,
                       ),
                       IconButton(
                         // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                         icon: const FaIcon(FontAwesomeIcons.github),
                         onPressed: () { print("Pressed"); },
                         color: Colors.greenAccent,
                         highlightColor: Colors.amberAccent, //<-- SEE HERE
                         iconSize: 50,
                       ),
                     ]))),
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ListTile(
                            title: const Text("Privacy"),
                            leading: const Icon(Icons.privacy_tip_outlined),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),
                          ListTile(
                            title: const Text("Purchase History"),
                            leading: const Icon(Icons.timelapse),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),

                          ListTile(
                            title: const Text("Help & Support"),
                            leading: const Icon(Icons.help),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),
                          ListTile(
                            title: const Text("Settings"),
                            leading: const Icon(Icons.settings),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),

                          ListTile(
                            title: const Text("Invite Friend"),
                            leading: const Icon(Icons.add_circle),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),
                          ListTile(
                            title: const Text("Logout"),
                            leading: const Icon(Icons.logout),
                            trailing:const Icon(Icons.arrow_forward_ios_sharp,size: 30,),
                            onTap: (){print("Pressed");},
                            onLongPress:(){print("Pressed on");} ,
                          ),
                        ],
                      )

                    )
                  ]),),),
        ),



    );
  }
}

