
import 'package:assignment3/FaceBookUi/items/profile%20avatar.dart';
import 'package:assignment3/FaceBookUi/items/storymodal.dart';
import 'package:assignment3/FaceBookUi/items/user.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({Key? key, required this.currentUser, required this.stories})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      height: 200,
      color: Colors.white,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 1 + stories.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
             //   child: _StoryCard(isAddStory: true, currentUser: currentUser,),
              );
            }
            final Story story = stories[index - 1];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: _StoryCard(story: story, currentUser: currentUser,),
            );
          }),
    );
  }
}

class _StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const _StoryCard(
      {Key? key, this.isAddStory = false, required this.currentUser, required this.story})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          // child: CachedNetworkImage(
          //   imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
          //   height: double.infinity,
          //   width: 110,
          //   fit: BoxFit.cover,
          // ),
        ),
        Container(
          height: double.infinity,
          width: 110,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.black26),
        ),
        Positioned(
          top: 8,
          left: 8,
          child: isAddStory
              ? Container(
            height: 40.0,
            width: 40,
            decoration: BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(
                Icons.add,
                color: Color(0xFF1777F2),
              ),
              onPressed: () {},
            ),
          )
              : ProfileAvatar(
              imageUrl: story.user.imageUrl, hasBorder: !story.isViewed),
        ),
        Positioned(
          child: Text(
            isAddStory ? "Add Story" : story.user.name,
            style: TextStyle(color: Colors.white),
          ),
          bottom: 8,
          left: 8,
          right: 8,
        )
      ],
    );
  }
}