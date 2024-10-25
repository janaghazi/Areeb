// ignore_for_file: prefer_const_constructors

import 'package:areeb/classes/list.dart';
import 'package:flutter/material.dart';
import '../EditProfile.dart';
import '../classes/Artist.dart';

void main() {
  runApp(ProfilePage());
}

class ProfilePage extends StatelessWidget {
  // const ProfilePage({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(artist: artist2,),
    );
  }
}

class MainPage extends StatelessWidget {
  final double coverHeight = 200;
  final double profileHeight = 144;
  final Artist artist;

  const MainPage({super.key, required this.artist});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Color.fromRGBO(251, 246, 242, 1.000), // background color
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildTop(),
            SizedBox(height: 20),
            buildContent(context),
            SizedBox(height: 20),
            buildPosts(),
          ],
        ),
      ),
    );
  }

  Widget buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  artist.displayName,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 2.0),
                Text(
                  "@${artist.username}",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  artist.bio,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    Text(
                      '9 posts',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      '100 Following',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(width: 16.0),
                    Text(
                      '200 Followers',
                      style: TextStyle(
                        color: Colors.grey.shade800,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigate to the EditProfile page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EditProfile()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(141, 180, 121, 1.000),
              foregroundColor: Colors.white,
            ),
            child: Text('Edit'),
          ),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          left: 16,
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildCoverImage() => Container(
        color: const Color.fromARGB(255, 25, 24, 24),
        child: Image.network(
          "https://thumbs.dreamstime.com/b/photographer-typographic-header-professional-camera-taking-pictures-studio-artistic-occupation-photography-217078994.jpg",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: AssetImage("assets/WhatsApp.jpg"),
      );

  Widget buildPosts() {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        return Card(
          child: Image.network(
            'https://picsum.photos/id/${index + 1}/400/400',
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
