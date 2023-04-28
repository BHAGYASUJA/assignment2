
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
        body: SingleChildScrollView(
         child:   Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Login Page",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                      obscureText: isPassword,
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          fillColor: Color(0xfff3f3f4),
                          filled: true))
                ],
              ),
            )
        )

    );
  }
}
