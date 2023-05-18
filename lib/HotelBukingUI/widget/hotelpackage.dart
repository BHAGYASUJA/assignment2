import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelPackageTile extends StatelessWidget {
  const HotelPackageTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10, left: 20, right: 20),
      child: Row(
        children: [
          Text(
            "Hotel Packages",
            style: TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
          ),
          Spacer(),
          TextButton(onPressed: () {}, child: Text("view more"))
        ],
      ),
    );
  }
}