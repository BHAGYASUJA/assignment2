import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class loginsql extends StatefulWidget {
  const loginsql({Key? key}) : super(key: key);

  @override
  State<loginsql> createState() => _loginsqlState();
}

class _loginsqlState extends State<loginsql> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(),
            )
          ],
        ),
      ),

    );
  }
}
