import 'package:assignment3/storage/FirebasePackage/Reg%20and%20login/fire%20authentication.dart';
import 'package:assignment3/storage/FirebasePackage/Reg%20and%20login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Homef extends StatelessWidget {
  const Homef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome'),
            ElevatedButton(onPressed: (){
              FireHelper().signOut().then((_){
                Get.to(LoginPage());
              });
            }, child: Text('signOut'))
          ],
        ),
      ),
    );
  }
}
