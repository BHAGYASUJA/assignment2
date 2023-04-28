
import 'package:assignment3/FirstApp/login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';



class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late SharedPreferences data;
  late String username;

  @override
  void initState() {
    fetchname();
    super.initState();
  }

  void fetchname() async {
    data = await SharedPreferences.getInstance();
    setState(() {
      username = data.getString('username')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network("images/asset/ba.jpg"),
            Text(" Welocome Page",textAlign: TextAlign.center,
            ) ,
              SizedBox(height: 10),
                  Text(
                    "Hai, Welcome $username",
                    style: TextStyle(fontSize: 20),
                  ),
                  ElevatedButton(onPressed: (){
                    data.setBool('newuser', true);
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context)=>logPage()));
                  }, child: Text("LogOut"))
                ])
              ),
    );
  }
}
              // child: TextButton(
              //   onPressed: () {},
              //   child: Row(
              //     children: [
              //       Text("Skip",
              //         style: TextStyle(),)
              //     ],
              //   ),
              // ),
  //    body: Center(

        // child: Column(
        //   children: [
        //     SizedBox(height:10),
        //     Row(
        //       children: [
        //         const Spacer(),
        //         Expanded(
        //           flex: 8,
        //           child: Image.network("https://cdn.xxl.thumbs.canstockphoto.com/happy-cute-little-kid-girl-practice-yoga-image_csp88970670.jpg"),
        //         ),
        //         const Spacer(),
        //       ],
        //     ),
        //     SizedBox(height: 10),
        //     Text(
        //       "Hai, Welcome $username",
        //       style: TextStyle(fontSize: 20),
        //     ),
        //     ElevatedButton(onPressed: (){
        //       data.setBool('newuser', true);
        //       Navigator.push(context, MaterialPageRoute(
        //           builder: (context)=>logPage()));
        //     }, child: Text("LogOut"))
        //   ],
        // ),
     // ),
