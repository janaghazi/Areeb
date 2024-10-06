import 'package:flutter/material.dart';
// import 'EditProfile.dart';
// import 'Profile.dart';
import 'home.dart';
// import 'Post.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int myIndex = 0;
  List<Widget> screenList = [
    MainApp(), // home, 0
    // ProfilePage(), // maya, 1
    // PostScreen(),// renad, 3
    // PostScreen(), // 4
    // PostScreen(), //5
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: '/home',
      // routes: {
      //   '/home': (context) => MainApp(),
      //   "/Profile": (context) => ProfilePage(),
      //   "/EditProfile": (context) => EditProfilePage(),
      //   "/Post": (context) => const PostScreen(),
      //   //"/subcategory": (context) => const subCategory(),
      // },
      debugShowCheckedModeBanner: false,
      // home: const MainApp(),
      home: Scaffold(
        body: Center(
          child: screenList[myIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black54,
          // rebulids the UI when the icon is pressed
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: 'Organizations',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
          ],
        ),
      ),
    );
  }
}
