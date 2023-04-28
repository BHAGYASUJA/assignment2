
import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home: regsql(),));
}


class regsql extends StatefulWidget {
  const regsql({Key? key}) : super(key: key);

  @override
  State<regsql> createState() => _regsqlState();
}

class _regsqlState extends State<regsql> {
  bool isPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Register new\naccount',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'images/play.png',
                    width: 99,
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                child: Column(
                  children: [
                    TextField(
                   //   controller: nameController,
                decoration: InputDecoration(
                prefixIcon: const Icon(Icons.account_box_sharp),
                      hintText: 'Name',

                      suffixIcon: SizedBox(),
                    ),),
                    SizedBox(
                      height: 32,
                    ),
                    TextField(
                      //   controller: nameController,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.account_box_sharp),
                        hintText: 'Email',

                        suffixIcon: SizedBox(),
                      ),),
                    // InputField(
                    //   hintText: 'Email',
                    //   controller: emailController,
                    //   suffixIcon: SizedBox(),
                    // ),
                    SizedBox(
                      height: 32,
                    ),
                    TextField(
                      //controller: passwordController,
                    //  obscureText: !passwordVisible,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.account_box_sharp),
                      hintText: 'Password',


                      //  onPressed: togglePassword,
                      ),
                    ),

              SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        //isChecked = !isChecked;
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color:  Colors.transparent,
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      width: 20,
                      height: 20,
                      child: Icon(
                        Icons.check,
                        size: 20,
                        color: Colors.white,
                      )
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'By creating an account, you agree to our',
                       // style: regular16pt.copyWith(color: textGrey),
                      ),
                      Text(
                        'Terms & Conditions',
                       // style: regular16pt.copyWith(color: primaryBlue),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                   // style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Text(
                      'Login',
                      //style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
     ]),
    ))
    );
  }
}
