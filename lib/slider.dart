import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: slider(),));
}

class slider extends StatelessWidget {
  const slider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: CarouselSlider(items: [
      //   Container(),
      //   Container(),
      // ], options: null,
        body: CarouselSlider(

          items:List.generate(10, (index) => Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage("https://plus.unsplash.com/premium_photo-1677776518705-70b21cbc4d47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHx0b3BpYy1mZWVkfDEzfF9oYi1kbDRRLTRVfHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
              )
            ),
          )),
        options: CarouselOptions(
          autoPlay: true,
          viewportFraction: .6,
          height: MediaQuery.of(context).size.height,
          enlargeCenterPage: true,
          autoPlayCurve: Curves.easeInBack,
          autoPlayAnimationDuration: Duration(seconds: 1),
          enableInfiniteScroll: true,
        )
      ),
    );
  }
}
