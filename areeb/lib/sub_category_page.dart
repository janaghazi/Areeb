import 'package:flutter/material.dart';
import 'classes/post.dart';
import 'classes/list.dart';
import 'widgets/feedPost.dart';

class SubCategoryPage extends StatelessWidget {
  SubCategoryPage({super.key, required this.pagetitle});
  final String pagetitle;
  final totalPosts = 8;

  @override
  Widget build(BuildContext context) {
    Map<String, Post> listOfPaintersPosts = {
      'post1': post1,
      'post2': post2,
      'post3': post3,
      'post4': post4,
      'post5': post5,
      'post6': post6,
      'post7': post7,
      'post8': post8,
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
      String postKey1 = "post$n";
      String postKey2 = "post$j";
      feedPosts.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FeedPost(
              artist: artist1,
              username: artist1.username,
              imagePath: "assets/${pagetitle}post$n.jpg",
              pfpPath: artist1.imagePath,
              post: listOfPaintersPosts[postKey1]!),
          FeedPost(
            artist: artist2,
            username: artist2.username,
            imagePath: "assets/${pagetitle}post$j.jpg",
            pfpPath: artist2.imagePath,
            post: listOfPaintersPosts[postKey2]!,
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
