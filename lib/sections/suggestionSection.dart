import 'package:facebook_app/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class suggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      child: Column(
        children: [
          ListTile(
            title: Text("People you may know"),
            trailing: IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  color: Colors.grey[700],
                ),
                onPressed: () {
                  print("More Clicked!");
                }),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                suggestionCard(
                  profileImage:
                      "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
                  friendname: "Mark suckerburg",
                  mutual: "14 Mutual friends",
                ),
                suggestionCard(
                  profileImage:
                      "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
                  friendname: "Mark suckerburg",
                  mutual: "14 Mutual friends",
                ),
                suggestionCard(
                  profileImage:
                      "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
                  friendname: "Mark suckerburg",
                  mutual: "14 Mutual friends",
                ),
                suggestionCard(
                  profileImage:
                      "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
                  friendname: "Mark suckerburg",
                  mutual: "14 Mutual friends",
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
