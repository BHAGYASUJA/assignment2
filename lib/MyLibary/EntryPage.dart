
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: entryPage(),));

}


class entryPage extends StatelessWidget {
  const entryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welocome To Page"),
            ElevatedButton(onPressed: () {  }, child: null,

      )


          ],
        ),
      ),
    );
  }
}
