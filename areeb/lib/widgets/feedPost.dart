
import 'package:flutter/material.dart';

import '../classes/Artist.dart';
import '../classes/post.dart';
import '../postDetails.dart';

class FeedPost extends StatelessWidget {
  final Post post;
  final Artist artist;
  final String username;
  final String imagePath;
  final String pfpPath;
  const FeedPost({
    super.key,
    required this.post,
    required this.artist,
    required this.username,
    required this.imagePath,
    required this.pfpPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: InkWell(
        child: Container(
          margin: const EdgeInsets.all(4),
          child: Column(
            children: [
              Image.asset(
                height: 300,
                width: 200,
                imagePath,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipOval(
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(10),
                      child: Image.asset(pfpPath, fit: BoxFit.cover),
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(artist.username),
                ],
              )
            ],
          ),
        ),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PostScreen(
                      post: post,
                      artist: artist,
                    )),
          );
        },
      ),
    );
  }
}
