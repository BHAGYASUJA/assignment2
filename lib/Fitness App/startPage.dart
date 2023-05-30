//
// import 'package:flutter/material.dart';
//
// import 'NextPage.dart';
// void main()=> runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Stats(),
//
//     );
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NextPage.dart';

class MyFitness extends StatelessWidget {
  const MyFitness({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
 debugShowCheckedModeBanner: false,
        home: Stats(),);
  }
}
