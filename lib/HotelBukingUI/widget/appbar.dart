import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookingAppBar extends StatelessWidget {
  //const BookingAppBar({super.key});
  String Username = "Username@gmail.com";

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: false,
      toolbarHeight: 60,
      backgroundColor: Colors.white.withOpacity(0.1),
      title: Padding(
        padding: EdgeInsets.only(top: 10, left: 10, bottom: 10),
        child: Column(
          children: [
            Text(
              "hello $Username",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Find Your Favourite Hotel",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            )
          ],
        ),
      ),
      elevation: 0,
      actions: [
        Padding(
          padding: EdgeInsets.only(top: 15, right: 20, bottom: 10, left: 15),
          child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/2709563/pexels-photo-2709563.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1')),
        )
      ],
    );
  }
}