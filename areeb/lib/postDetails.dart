import 'package:areeb/classes/Artist.dart';
import 'package:flutter/material.dart';

import 'classes/post.dart';

class PostScreen extends StatelessWidget {
  final Artist artist;
  final Post post;
  const PostScreen({
    super.key,
    required this.artist,
    required this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Post"),
          backgroundColor: const Color.fromARGB(255, 141, 180, 121),
          centerTitle: true,
         
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    ClipOval(
                      child: SizedBox.fromSize(
                          size: const Size.fromRadius(20),
                          child:
                              Image.asset(artist.imagePath, fit: BoxFit.cover)),
                    ),
                    const SizedBox(width: 10),
                    Text(
                      post.display,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    width: 200,
                    height: 300,
                    color: Colors.grey[300],
                    child: Image.asset(post.imagePath),
                    
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  post.subCategory,
                  style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(255, 141, 180, 121),
                      fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      post.title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(width: 130),

                    //like
                    const CircleAvatar(
                      radius: 20,
                      backgroundColor: Color.fromARGB(255, 141, 180, 121),
                      child: Icon(Icons.thumb_up, color: Colors.white),
                    ),

                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 10),
                      ),
                      child: const Text("Lest Collab!"),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "@${post.artist}",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "${post.dateCreated.day.toString()}-${post.dateCreated.month.toString()}-${post.dateCreated.year.toString()}",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  post.description,
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 30),
                const Text(
                  "Comments",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Your Comment...",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                      ),
                      child: const Text("Comment"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
