import 'package:assignment3/FaceBookUi/items/circlebutton.dart';
import 'package:assignment3/FaceBookUi/items/data.dart';
import 'package:assignment3/FaceBookUi/items/postContainer.dart';
import 'package:assignment3/FaceBookUi/items/room.dart';
import 'package:assignment3/FaceBookUi/items/story.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'items/post.dart';
import 'items/postmodel.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: TextStyle(
                  color: Color(0xFF1777F2), fontSize: 28, letterSpacing: -1.2),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CricleButton(icon: Icons.search, iconSize: 25, onPressed: () {}),
              CricleButton(
                  icon: Icons.facebook,
                  iconSize: 25,
                  onPressed: () {})
            ], systemOverlayStyle: SystemUiOverlayStyle.dark,
          ),
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Rooms(onlineUsers: onlineUsers),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
            sliver: SliverToBoxAdapter(
              child: Stories(currentUser: currentUser, stories: stories),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              final Post post = posts[index];
              return PostContainer(post: post);
            }, childCount: posts.length),
          )
        ],
      ),
    );
  }
}