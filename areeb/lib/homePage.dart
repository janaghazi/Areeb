import 'package:flutter/material.dart';

import 'widgets/sub_category_card.dart';

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
                      child: Image.asset('assets/MayaPFP.jpg', fit: BoxFit.cover),
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
                  firstTitle: "Painters",
                  firstimagePath: 'assets/home_images/painters.jpg',
                  secondTitle: "Graphic Designers",
                  secondImagePath: 'assets/home_images/GraphicDesigner.jpg',
                  thirdTitle: "Photographers",
                  thirdImagePath: "assets/home_images/photographer.jpg",
                ),
                Text(
                  "Performing Arts",
                  style: heading,
                ),
                SubCategoryCard(
                  firstTitle: "Singers",
                  firstimagePath: 'assets/home_images/Singer.jpg',
                  secondTitle: "Dancers",
                  secondImagePath: 'assets/home_images/Dancers.jpg',
                  thirdTitle: "Musicians",
                  thirdImagePath: "assets/home_images/Musician.jpg",
                ),
                Text(
                  "Crafts Arts",
                  style: heading,
                ),
                SubCategoryCard(
                  firstTitle: "Ceramicists",
                  firstimagePath: 'assets/home_images/Ceramicists.jpg',
                  secondTitle: "Jewelry Designers",
                  secondImagePath: 'assets/home_images/JewelryDesigner.jpg',
                  thirdTitle: "Carvers",
                  thirdImagePath: "assets/home_images/Carvers.jpg",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
