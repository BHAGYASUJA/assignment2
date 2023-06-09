import 'package:flutter/material.dart';

class CricleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final Function onPressed;

  const CricleButton(
      {Key? key,
        required this.icon,
        required this.iconSize,
        required this.onPressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6),
      decoration:
      BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black87,
        onPressed: (){},
      ),
    );
  }
}