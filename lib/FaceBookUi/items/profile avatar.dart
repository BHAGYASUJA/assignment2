import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  final bool hasBorder;

  const ProfileAvatar(
      {Key? key,
        required this.imageUrl,
        this.isActive = false,
        this.hasBorder = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        radius: 20,
        backgroundColor: Color(0xFF1777F2),
        child: CircleAvatar(
          radius: hasBorder ? 17 : 20,
          backgroundColor: Colors.grey[200],
          backgroundImage: AssetImage('images/accounts.png'),
          ///CachedNetworkImageProvider(imageUrl),

        ),
      ),
      isActive
          ? Positioned(
        child: Container(
          height: 15,
          width: 15,
          decoration: BoxDecoration(
              color: Color(0xFF4BCB1F),
//              borderRadius: BorderRadius.circular(30)
              shape: BoxShape.circle,
              border: Border.all(width: 2, color: Colors.white)),
        ),
        bottom: 0,
        right: 0,
      )
          : Container()
    ]);
  }
}
