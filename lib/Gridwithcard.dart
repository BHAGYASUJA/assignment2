import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder:(BuildContext context)=> MaterialApp(
      useInheritedMediaQuery: true,
      home:grid_with_card (),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
class grid_with_card extends StatelessWidget {
  const grid_with_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
          child: GridView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.symmetric(horizontal: 30),
            itemCount: 12,
            itemBuilder: (ctx, i) {
              return Card(
                child: Container(
                  height: 290,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Text(
                            'Heart Shaker',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 0.0,
              mainAxisSpacing: 5,
              mainAxisExtent: 264,
            ),
          ),
        )
    );
  }
}
