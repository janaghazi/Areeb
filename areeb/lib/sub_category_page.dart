import 'package:flutter/material.dart';
import 'classes/list.dart';
import 'classes/post.dart';
import 'widgets/feedPost.dart';

class SubCategoryPage extends StatelessWidget {
  SubCategoryPage({super.key, required this.pagetitle});
  final String pagetitle;
  final totalPosts = 8;

  @override
  Widget build(BuildContext context) {
    Map<String, Post> listOfPosts = {
      'Painterspost1': post1,
      'Painterspost2': post2,
      'Painterspost3': post3,
      'Painterspost4': post4,
      'Painterspost5': post5,
      'Painterspost6': post6,
      'Painterspost7': post7,
      'Painterspost8': post8,
      'Photographerspost1': post9,
      'Photographerspost2': post10,
      'Photographerspost3': post11,
      'Photographerspost4': post12,
      'Photographerspost5': post13,
      'Photographerspost6': post14,
      'Photographerspost7': post15,
      'Photographerspost8': post16,
    };
    // for creating the feed
    int itemCountLimit = 8;
    List<Widget> feedPosts = [];

    // looping to create the list for the feed
    int n = 1;
    int j = 2;
    for (int i = 0; i < itemCountLimit; i++) {
      {
        if (n > itemCountLimit) break;
      } // Stop adding items once the limit is reached
      String postKey1 = "${pagetitle}post$n";
      String postKey2 = "${pagetitle}post$j";
      feedPosts.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FeedPost(
              // artist: artist1,
              // username: artist1.username,
              artist: listOfPosts[postKey2]!.artist,
              imagePath: "assets/${pagetitle}post$n.jpeg",
              pfpPath: artist1.imagePath,
              post: listOfPosts[postKey1]!),
          FeedPost(
            // artist: artist3,
            artist: listOfPosts[postKey2]!.artist,
            // username: artist2.username,
            imagePath: "assets/${pagetitle}post$j.jpeg",
            pfpPath: artist2.imagePath,
            post: listOfPosts[postKey2]!,
          )
        ],
      ));
      n += 2;
      j += 2;
    }

    return Scaffold(
      backgroundColor: const Color.fromRGBO(251, 246, 242, 10),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 180, 121),
        centerTitle: true,
        title: Text(pagetitle),
      ),
      body: ListView(
        children: feedPosts,
      ),
    );
  }
}
