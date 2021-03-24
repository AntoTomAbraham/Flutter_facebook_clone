import 'package:facebook_app/widgets/storycard.dart';
import 'package:flutter/material.dart';

class storySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          storyCard(
            labeltext: "Add to story",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
            createStorystatus: true,
          ),
          storyCard(
            labeltext: "Elon Musk",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Vaibhav Sisinity",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Raj shamani",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Kunal sha",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
            createStorystatus: false,
          )
        ],
      ),
    );
  }
}
