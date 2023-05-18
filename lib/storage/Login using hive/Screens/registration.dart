import 'dart:html';

import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../database/Database.dart';
import '../model/usermodal.dart';

class reghive extends StatefulWidget {


  @override
  State<reghive> createState() => _reghiveState();
}

class _reghiveState extends State<reghive> {

  final conpassword  = TextEditingController();
  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hive Registration"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            const Text(
              "Registration Form",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
               // controller: name_controller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: username,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: password,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: conpassword,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                validSignUp();
              },
              child: const Text("Register"),
            )
          ],
        ),
      ),
    );
  }

  void validSignUp() async {
   ///space remove  front and last of th e field  using trim

    final email = username.text.trim();
    final pass = password.text.trim();
    final cpass = conpassword.text.trim();

    final emailValidationResult = EmailValidator.validate(email);

    if(email != "" && pass!= "" && cpass != ""){

      if(emailValidationResult == true) {
        final passValidationResult = checkPassword(pass,cpass);
        if(passValidationResult == true){
          final user = User(email:email,password:pass);
          await DBFunction.instance.userSignUp(user);
          Get.back();
          Get.snackbar("Success", "Account Created");
        }
      }else{
        Get.snackbar("Error", "Provide A valide Email");
      }
      }
    else{
      Get.snackbar("Error", "Fields Can Not Be Empty");
    }
    }

  checkPassword(String pass, String cpass) {
    if(pass == cpass){
      if(pass.length < 6){
        Get.snackbar("Error", "Password length should be >6");
        return false;
      }else{
        return true;
      }
    } else{
      Get.snackbar("Error", "Password Mismatched");
      return false;
    }
  }
}
