import 'package:assignment3/storage/Login%20using%20hive/Screens/home.dart';
import 'package:assignment3/storage/Login%20using%20hive/Screens/registration.dart';
import 'package:assignment3/storage/Login%20using%20hive/database/Database.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import '../model/usermodal.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  Hive.openBox<User>('user');
  runApp(GetMaterialApp(
      home:Login(),
  ));
}

class Login extends StatelessWidget {


  TextEditingController uname =TextEditingController();
  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: uname,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextField(
              controller: pass,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async{
              ///create a getUser function for get the data from the registration
              final userlist = await DBFunction.instance.getUser();

              ///Create findUser For get the email and password
              findUser(userlist);
            },
            child: const Text("Log-In"),
          ),
          TextButton(
              onPressed: () {
                // Navigator.push(context,
                //    MaterialPageRoute(builder: (context) => regFrom()));
                Get.to(reghive());
              },
              child: Text("Not a User Register Here!!!!!!!!!!"))
        ],
      )
    );
  }

 Future<void>findUser(List<User> userlist) async{
    final email = uname.text.trim();
    final password = pass.text.trim();
    ///check user is alrready is present
   bool userFound =false;
   final validate = await validateLogin(email,password);
   if (validate ==true){
     await Future.forEach(userlist, (user) {
       if(user.email == email && user.password == password){
         userFound = true;
       }else{
         userFound = false;
       }
     });
     if(userFound == true){
       Get.offAll(() =>Homeee(email:email));
       Get.snackbar("Success", "Login Success",backgroundColor: Colors.green);

     }else
       {
         Get.snackbar("Error", "Incorrect email or password",backgroundColor: Colors.red);
         //return false;

       }
   }
  }

 bool validateLogin(String email, String password) {
    if(email != '' && password != ''){
      return true;
    }else{
      Get.snackbar("Error", "Fields Cannot Empty");
      return false;
    }
 }
}
