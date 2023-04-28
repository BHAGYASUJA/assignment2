
import 'package:assignment3/LoginUsingSqlite/registration.dart';
import 'package:flutter/material.dart';

import 'StartPage.dart';
void main(){
  runApp(const MaterialApp(home: loginsql(),));

}


class loginsql extends StatefulWidget {
  const loginsql({Key? key}) : super(key: key);

  @override
  State<loginsql> createState() => _loginsqlState();
}

class _loginsqlState extends State<loginsql> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Image.network("https://images.unsplash.com/photo-1476820865390-c52aeebb9891?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"),
                    TextField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.account_box_sharp),
                          hintText: 'UserName',
                          labelText: 'UserName',
                          helperText: "Username must be an email",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                    ),
                  TextField(
                        obscureText: true,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                          helperText: "Password length should be greater than 6",
                          prefixIcon: const Icon(Icons.password),
                          suffixIcon: const Icon(Icons.visibility_off),
                          hintText: 'Password',
                          labelText: 'Password',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100)),
                        ),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,bottom: 10),
                      child:  Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.purpleAccent, borderRadius: BorderRadius.circular(20)),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (_) => FirstPage()));
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
        ),

    );
  }
}
