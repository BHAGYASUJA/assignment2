import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() => runApp(DevicePreview(
  builder: (BuildContext context) => MaterialApp(
    useInheritedMediaQuery: true,
    home: log(),
    debugShowCheckedModeBanner: false,
  ),
));


class log extends StatelessWidget {
  const log({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Image.asset('images/yoga.jpg').color,
      body: Container(
        decoration:BoxDecoration(
      image: DecorationImage(
      image: AssetImage("images/yoga.jpg"),
      fit: BoxFit.cover,
      ),
      )),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Title here', style: TextStyle(color: Colors.teal),),
        leading: IconButton(
          icon: Image.asset('images/star.png'),
          onPressed: () {},
        ),
        actions: <Widget>[
          IconButton(icon: Image.asset('images/payment.png'), onPressed: () {  },),


        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child:           IconButton(icon: Image.asset('images/transfer.png'), onPressed: () {  },),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        height: 44.0 + MediaQuery.of(context).padding.bottom,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Image.asset('images/transfer.png'), onPressed: () {  },),
            IconButton(icon: Image.asset('images/transfer.png'), onPressed: () {  },),

          ],
        ),
      ),
    );
  }

  defaultAppBoxDecoration() {}
}
