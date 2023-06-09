
import 'package:assignment3/FaceBookUi/items/profile%20avatar.dart';
import 'package:assignment3/FaceBookUi/items/user.dart';
import 'package:flutter/material.dart';


class CreatePostContainer extends StatelessWidget {
  final User currentUser;

  const CreatePostContainer({Key? key, required this.currentUser})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 8, 12, 0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              ProfileAvatar(imageUrl: currentUser.imageUrl),
              const SizedBox(
                width: 8,
              ),
              Expanded(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: "What\'s on your mind?"),
                ),
              )
            ],
          ),
          const Divider(
            height: 10,
            thickness: 0.5,
          ),
          Container(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("Live")),
                ElevatedButton(onPressed: (){}, child: Text('Photo')),
                // FlatButton(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.videocam,
                //     color: Colors.red,
                //   ),
                //   label: Text("Live"), child: null,
                // ),
                // VerticalDivider(
                //   width: 8,
                // ),
                // FlatButton.icon(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.photo_library,
                //     color: Colors.lightGreenAccent,
                //   ),
                //   label: Text("Photo"),
                // ),
                // VerticalDivider(
                //   width: 8,
                // ),
                // FlatButton.icon(
                //   onPressed: () {},
                //   icon: Icon(
                //     Icons.video_call,
                //     color: Colors.purple,
                //   ),
                //   label: Text("Live"),
                // )
              ],
            ),
          )
        ],
      ),
    );
  }
}