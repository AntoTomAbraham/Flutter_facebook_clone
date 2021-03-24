import 'package:facebook_app/widgets/suggestionCard.dart';
import 'package:flutter/material.dart';

class suggestionSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
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
            height: 340,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                suggestionCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
