import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home: exit(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class exit extends StatelessWidget {
  const exit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future<bool> showalert() async {
      return await showDialog(context: context, builder: (context)
      {
        return AlertDialog(
          title: Text("Exit !!"),
            content: Text("Do You Want To Exit"),
          actions: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("Yes")),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No")),
          ]
        );
      }
      );
  }
    return WillPopScope(
        onWillPop: showalert,
         child:Scaffold(
           body: Center(child: Text("Press Back Button For Exit"),),
         ) ,);
  }

}
