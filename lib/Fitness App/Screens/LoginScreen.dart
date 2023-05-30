import 'package:assignment3/Fitness%20App/NextPage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:assignment3/Fitness%20App/Screens/SignUpScreen.dart';

import 'package:assignment3/Fitness%20App/Screens/logout.dart';




class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Create a text controller and use it to retrieve the current value
  final username_controller = TextEditingController();
  final password_controller = TextEditingController();

  late SharedPreferences logindata;

  late bool newuser;
  late String uname;
  late String pswd;
  late String name;

  @override
  void initState() {
    check_if_already_login();
    getvalue();
  }

  void getvalue() async {
    logindata = await SharedPreferences.getInstance();
    setState(() {
      name = logindata.getString('name')!;
      uname = logindata.getString('username')!;
      pswd = logindata.getString('password')!;
    });
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('newuser') ?? true); // null ?? second

    if (newuser == false) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Home()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    username_controller.dispose();
    password_controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('images/yoga.png').color,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height:10),
            Row(
              children: [
                const Spacer(),
                Expanded(
                  flex: 8,
                  child: Image.asset("images/yoga.png"),
                ),
                const Spacer(),
              ],
            ),
            SizedBox(height: 10),

            const Text(
              "Fittness",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              "You Wanna Have",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
            const Text(
              "Please Login ",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint(uname);

                String username = username_controller.text;
                String password = password_controller.text;

                if (username != '' &&
                    password != '' &&
                    username == uname &&
                    password == pswd) {
                  print('Successfull');
                  logindata.setBool('newuser', false);

                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Stats()));
                }
              },
              child: const Text("Log-In"),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => regFrom()));
                },
                child: Text("Not a User Register Here!!!!!!!!!!"))
          ],
        ),
      ),
    );
  }
}