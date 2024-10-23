import 'package:flutter/material.dart';

import '../sub_category_page.dart';


class SubCategoryCard extends StatelessWidget {
  final String firstTitle;
  final String secondTitle;
  final String thirdTitle;
  final String firstimagePath;
  final String secondImagePath;
  final String thirdImagePath;
  final TextStyle subheading = const TextStyle(
      fontSize: 15,
      color: Color.fromRGBO(27, 45, 16, 1),
      fontStyle: FontStyle.italic);

  const SubCategoryCard({
    super.key,
    required this.firstTitle,
    required this.secondTitle,
    required this.thirdTitle,
    required this.firstimagePath,
    required this.secondImagePath,
    required this.thirdImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        OneSubCategory(
            imagePath: firstimagePath, title: firstTitle, subheading: subheading),
        OneSubCategory(
            imagePath: secondImagePath, title: secondTitle, subheading: subheading),
        OneSubCategory(
            imagePath: thirdImagePath, title: thirdTitle, subheading: subheading),
      ]),
    );
  }
}

class OneSubCategory extends StatelessWidget {
  const OneSubCategory({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subheading,
  });

  final String imagePath;
  final String title;
  final TextStyle subheading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imagePath,
                height: 200,
                width: 200,
              ),
            ),
            Text(
              title,
              style: subheading,
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SubCategoryPage(pagetitle: title,)),
        );
      },
    );
  }
}
