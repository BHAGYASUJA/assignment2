import 'package:assignment3/FaceBookUi/items/profile%20avatar.dart';
import 'package:assignment3/FaceBookUi/items/user.dart';
import 'package:flutter/material.dart';


class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  const Rooms({Key? key, required this.onlineUsers}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.white,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 10),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: _CreateRoomButton(),
              );
            }
            final User user = onlineUsers[index - 1];
            return Container(
              margin: const EdgeInsets.all(2),
              child: ProfileAvatar(
                imageUrl: user.imageUrl,
                isActive: true,
              ),
            );
          }),
    );
  }
}

class _CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      //shape: RoundedRectangleBorder(
      //  borderRadius: BorderRadius.circular(30),
     // ),
     // color: Colors.white,
   //   borderSide: BorderSide(width: 1, color: Colors.blueAccent),
    //  textColor: Color(0xFF1777F2),
      child: Row(
        children: [
          ShaderMask(
            shaderCallback: (bounds) => LinearGradient(
              colors: [Color(0xFF496AE1), Color(0xFFCE48B1)],
            ).createShader(bounds),
            child: Icon(
              Icons.video_call,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          Text("Create\nRoom")
        ],
      ),
    );
  }
}