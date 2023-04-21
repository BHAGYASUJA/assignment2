import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: sizetest(),
  ));
}


class sizetest extends StatelessWidget {
  const sizetest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    var screenOrientation =MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Media Query"),
        
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('This Device is $screenWidth x $screenHeight'
            ),
            const SizedBox(
              height: 20,
            ),
            screenWidth >= 840 && screenHeight >= 480
                ? Container(
              height: 100,
              width: 700,
              color: Colors.red,
            )
                : Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 20,
            ),
            screenOrientation == Orientation.portrait
                ? const Text(
              'This device is in portrait mode',
            )
                : const Text(
              'This device is in landscape mode',
            ),
          ],
        ),
      ),
    );
  }
}
