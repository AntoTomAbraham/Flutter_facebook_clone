import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Image.network(
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
