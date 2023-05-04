import 'dart:math';

import 'package:assignment3/Sqlite/login.dart';
import 'package:flutter/material.dart';

import 'SQLHelper.dart';

class sign extends StatefulWidget {
  const sign({Key? key}) : super(key: key);

  @override
  State<sign> createState() => _signState();
}

class _signState extends State<sign> {

  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController Name = TextEditingController();
  var formkey1 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context){

    void Addnewuser(String name, String email, String password) async {
      var id = await SQLHelper.AddNewUser(name, email, password);

      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => sign()));
      }
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SignUp"),
      ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    controller: Name,
                    textInputAction: TextInputAction.next,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    controller: email,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: TextFormField(
                    controller: password,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)))),
                  ),
                ),

                ElevatedButton(
                    style: ButtonStyle(
                        minimumSize:
                        MaterialStateProperty.all(const Size(330, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ))),
                    onPressed: () async {
                      final valid1 = formkey1.currentState!.validate();

                      if (valid1) {
                        /// if form state is valid data from the textfield will upload to db
                        String uname = email.text;
                        String name = Name.text;

                        var data = await SQLHelper.userFound(name, uname);

                        if (data.isNotEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('User already exist')));
                        } else {
                          Addnewuser(Name.text, email.text, password.text);
                        }
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            action:
                            SnackBarAction(label: 'UNDO', onPressed: () {}),
                            content: const Text('Invalid username / password')));
                      }
                    },
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(color: Colors.black),
                    )),


              ],
            ),

    ),
    );
  }
}
