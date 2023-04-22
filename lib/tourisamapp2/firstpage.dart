import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: firstpage(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class firstpage extends StatelessWidget {
  const firstpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.network("https://scontent.fcok6-1.fna.fbcdn.net/v/t31.18172-8/20863533_1646913908712952_8964877923256845903_o.jpg?_nc_cat=102&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=VD-u779axdwAX_cthua&_nc_ht=scontent.fcok6-1.fna&oh=00_AfDFu4Zz3mc5S10AAUhSbHUJgcsXPgUZQ0yzZtLAjPkU9A&oe=646A29D6",
          ),
          Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.blue[500], borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => firstpage()));
              },
              child:  Text(
                'Login',
                style: TextStyle(color: Colors.white, fontSize: 15,),
              ),

             // FaIcon(FontAwesomeIcons.facebookF).p16(),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text("-Or-"),

          SizedBox(
            height: 10,
          ),

          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => firstpage()));
              },
              child: Text(
                'Login With Facebook',
                style: TextStyle(color: Colors.white,fontSize: 15),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => firstpage()));
              },
              child: Text(
                'Login with Twitter',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(20)),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => firstpage()));
              },
              child: Text(
                'Login with Google',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ),
        ],
      )

    );
  }
}
