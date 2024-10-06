// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


// homepage , jana ghazi
import 'package:flutter/material.dart';
import 'Sub_Category_Card.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Text("أريب"),
                Image.asset(
                  "assets/areeb.png",
                  fit: BoxFit.contain,
                  height: 50,
                ),
                // Image.asset(
                //   'assets/software-engineer.png',
                //   // fit: BoxFit.contain,
                //   height: 50,
                // ),
                Container(
                  padding: EdgeInsets.all(0.5), // Border width
                  decoration:
                      BoxDecoration(color: Colors.black, shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(25), // Image radius
                      child: Image.asset('assets/wallahi_nice.jpg',
                          fit: BoxFit.cover),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  height: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "EXPLORE ART!",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Visual Arts",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                Sub_Category_Card(),
                Text(
                  "Preforming Arts",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                Sub_Category_Card(),
                Text(
                  "Literary Arts",
                  style: TextStyle(
                      fontSize: 25,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold),
                ),
                Sub_Category_Card(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
