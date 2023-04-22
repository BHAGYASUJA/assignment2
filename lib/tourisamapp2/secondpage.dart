import 'package:assignment3/tourisamapp2/thirdpage.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      home: second(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}

class second extends StatelessWidget {
  const second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List names = [
      "Furious Places",
      "Luxury Places",
      "Favorite Places",
      "Nature look"
    ];
    List images = [
      "images/F1.jpg",
      "images/F2.jpg",
      "images/F3.jpg",
      "images/F4.jpg",
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: RichText(
            text: const TextSpan(
              text: 'Go',
              style: TextStyle(
                  color: Colors.lightBlue,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Fast',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),


          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          actions: [
            CircleAvatar(radius: 30, backgroundColor: Colors.blueAccent),
          ],
          bottom: AppBar(
            elevation: 0,
            title: Container(
              color: Colors.white,
              width: double.infinity,
              height: 40,
              child: const Center(
                child: TextField(
                    decoration: InputDecoration(
                  hintText: 'Search',
                  suffix: Icon(Icons.search),
                )),
              ),
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    'Popular',
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      padding: const EdgeInsets.all(10.0),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 5),
                      itemCount: images.length,
                      itemBuilder: (BuildContext, int index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width * 5,
                              decoration: BoxDecoration(
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 20.0,
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(images[index])),
                              ),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(names[index]),
                          ],
                        );
                      }),
                  const SizedBox(
                    height: 8,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.blue[500],
                        borderRadius: BorderRadius.circular(20)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) =>  details()));
                      },
                      child: const Text(
                        'Explore Now',
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              )),
        )));
  }
}
