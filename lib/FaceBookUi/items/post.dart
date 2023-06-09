

import 'package:assignment3/FaceBookUi/items/palate.dart';
import 'package:assignment3/FaceBookUi/items/postmodel.dart';
import 'package:assignment3/FaceBookUi/items/profile%20avatar.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class PostContainer extends StatelessWidget {
  final Post post;

  const PostContainer({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _PostHeader(post: post),
                SizedBox(height: 4),
                Text(post.caption),
                post.imageUrl != null ? SizedBox.shrink() : SizedBox(height: 6)
              ],
            ),
          ),
          post.imageUrl != null
              ? Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
          //  child: CachedNetworkImage(imageUrl: post.imageUrl),
          )
              : const SizedBox.shrink(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: _PostStats(post: post),
          )
        ],
      ),
    );
  }
}

class _PostHeader extends StatelessWidget {
  final Post post;

  const _PostHeader({Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      ProfileAvatar(imageUrl: post.user.imageUrl),
      SizedBox(width: 8),
      Expanded(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(post.user.name, style: TextStyle(fontWeight: FontWeight.w600)),
          Row(
            children: [
              Text(
                '${post.timeAgo} * ',
                style: TextStyle(color: Colors.grey[600], fontSize: 12),
              ),
              Icon(Icons.public, color: Colors.grey[600], size: 12)
            ],
          ),
        ]),
      ),
      IconButton(icon: const Icon(Icons.more_horiz), onPressed: () {})
    ]);
  }
}

class _PostStats extends StatelessWidget {
  final Post post;

  const _PostStats({ Key? key, required this.post}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                  color: Palette.facebookBlue, shape: BoxShape.circle),
              child: const Icon(Icons.thumb_up, size: 10, color: Colors.white),
            ),
            SizedBox(width: 8),
            Expanded(
                child: Text("${post.likes}",
                    style: TextStyle(color: Colors.grey[600]))),
            Text("${post.comments} Comments",
                style: TextStyle(color: Colors.grey[600])),
            SizedBox(width: 8),
            Text("${post.shares} Shares",
                style: TextStyle(color: Colors.grey[600]))
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _PostButton(
                icon: Icon(Icons.thumb_up,
                    color: Colors.grey[600], size: 20),
                label: "Like",
                onTap: () => {},),
            _PostButton(
                icon: Icon(Icons.comment,
                    color: Colors.grey[600], size: 20),
                label: "Comment",
                onTap: () => {}, ),
            _PostButton(
                icon: Icon(Icons.share,
                    color: Colors.grey[600], size: 25),
                label: "Share",
                onTap: () => {},),
          ],
        )
      ],
    );
  }
}

class _PostButton extends StatelessWidget {
  final Icon icon;
  final String label;
  final Function onTap;

  const _PostButton(
      { Key? key,
        required this.icon,
        required this.label,
        required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: InkWell(
        onTap: (){},
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          height: 25,
          child: Row(
            children: [
              icon,
              const SizedBox(
                width: 4,
              ),
              Text(label)
            ],
          ),
        ),
      ),
    );
  }
}