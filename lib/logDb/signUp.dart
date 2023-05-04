import 'package:assignment3/logDb/loginPage.dart';
import 'package:flutter/material.dart';

import 'Sql.dart';

class signPage extends StatefulWidget {
  const signPage({Key? key}) : super(key: key);

  @override
  State<signPage> createState() => _signPageState();
}

class _signPageState extends State<signPage> {

  var formkey1 = GlobalKey<FormState>();
  var conname = TextEditingController();
  var conemail = TextEditingController();
  var pass = TextEditingController();
  var cpass = TextEditingController();
  @override
  Widget build(BuildContext context) {

    void Addnewuser(String name, String email, String password) async {
      var id = await SQLHelper.AddNewUser(name, email, password);

      if (id != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => loginPage()));
      } else {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => signPage()));
      }
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey1,
          child: Column(
            children: [

              Text(
                  "Sign up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),

              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "create an Account,To Read free",
                  style: TextStyle(color: Colors.grey,fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: conname,
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
                  controller: conemail,
                  textInputAction: TextInputAction.next,
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
                  textInputAction: TextInputAction.next,
                  controller: pass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: TextFormField(
                  controller: cpass,
                  obscureText: true,
                  obscuringCharacter: '*',
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Confirm Password",
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
                      String uname = conemail.text;
                      String name = conname.text;

                      var data = await SQLHelper.userFound(name, uname);

                      if (data.isNotEmpty) {
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('User already exist')));
                      } else {
                        Addnewuser(conname.text, conemail.text, pass.text);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Alredy have an account?"),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => loginPage()));
                      },
                      child: const Text(
                        "Login!!",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
