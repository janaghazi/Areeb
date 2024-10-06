import 'package:flutter/material.dart';
 
// widget used in homepage ,, jana
class Sub_Category_Card extends StatelessWidget {
  const Sub_Category_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.grey),
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[600],
                  ),
                ),
                Text(
                  "Painters",
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.grey),
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[600],
                  ),
                ),
                Text("Painters")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.grey),
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[600],
                  ),
                ),
                Text("Painters")
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.grey),
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Container(
                  color: Colors.grey[300],
                  child: Icon(
                    Icons.image,
                    size: 100,
                    color: Colors.grey[600],
                  ),
                ),
                Text("Painters")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
