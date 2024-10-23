// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:areeb/widgets/SubCategoryCard.dart';
import 'package:flutter/material.dart';


class MainApp extends StatelessWidget {
  MainApp({super.key});
  final TextStyle heading = TextStyle(
      fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);
  final TextStyle subheading = TextStyle(
      fontSize: 25, fontStyle: FontStyle.italic, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromRGBO(251, 246, 242, 10),
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(251, 246, 242, 10),
          title: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/areeb.png",
                  fit: BoxFit.contain,
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.all(0.5), // Border width
                  decoration: BoxDecoration(
                      color: Colors.black, shape: BoxShape.circle),
                  child: ClipOval(
                    child: SizedBox.fromSize(
                      size: Size.fromRadius(25), // Image radius
                      child: Image.asset('assets/pfp.jpeg', fit: BoxFit.cover),
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
                  "Visual Arts",
                  style: heading,
                ),
                SubCategoryCard(
                  firstTitle: "PAINTERS",
                  firstimagePath: 'assets/painters.jpeg',
                  secondTitle: "GRAPHIC DESIGNERS",
                  secondImagePath: 'assets/graphicDesign.jpeg',
                  thirdTitle: "PHOTOGRAPAHER",
                  thirdImagePath: "assets/photography.jpeg",
                ),
                Text(
                  "Performing Arts",
                  style: heading,
                ),
                SubCategoryCard(
                  firstTitle: "Singers",
                  firstimagePath: 'assets/Singers.jpeg',
                  secondTitle: "Dancers",
                  secondImagePath: 'assets/Dancers.jpeg',
                  thirdTitle: "Musicians",
                  thirdImagePath: "assets/Musicians.jpeg",
                ),
                Text(
                  "Crafts Arts",
                  style: heading,
                ),
                SubCategoryCard(
                  firstTitle: "Ceramicists",
                  firstimagePath: 'assets/Ceramics.jpg',
                  secondTitle: "Jewelry Designers",
                  secondImagePath: 'assets/JewelryDesign.jpg',
                  thirdTitle: "Wood Carving",
                  thirdImagePath: "assets/WoodCarving.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
