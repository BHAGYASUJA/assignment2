import 'package:assignment3/LoginUsingSqlite/loginpage.dart';
import 'package:assignment3/LoginUsingSqlite/registration.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: FirstPage(),));

}

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
              children: [
                Image.network("https://images.unsplash.com/photo-1476820865390-c52aeebb9891?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome To Our App",
            style: TextStyle(fontSize: 20),),


            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => loginsql()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
            child:
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => regsql()));
                },
                child: Text(
                  'SignUp',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ),
            ),
            )
          ],
        ),
      ])
      ])
      )
    );
  }
}
