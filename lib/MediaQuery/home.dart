import 'package:flutter/cupertino.dart';

import 'mobilebody.dart';
import 'mydesktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  var deviceWidth =MediaQuery.of(context).size.width;
  if(deviceWidth <600){
    return MyMobileBody();
  }
  else
    {
      return MyDeskTop ();
    }
  }
}
