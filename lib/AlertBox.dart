import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home: alert(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class alert extends StatefulWidget {
  const alert({Key? key}) : super(key: key);

  @override
  State<alert> createState() => _alertState();
}

class _alertState extends State<alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Box")),
        body:Center(
          child: ElevatedButton(onPressed: () {
            showDialog(context: context,
                builder: (context) {
              return AlertDialog(
                title:Text("Exit"),
                content: Text("Do You Want To Exit"),
                actions: [
                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      child:Text("Yes")),

                  TextButton(onPressed: (){
                  Navigator.of(context).pop();
                  },
                      child: Text("No")),

                  TextButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      child:Text("Cancel")),

                ],
              );

            });
          }, child: Text("Show Alert"),
          ),
        )
    );
  }
}
