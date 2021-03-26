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
                "https://images.unsplash.com/photo-1611095788646-86737a001141?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Vaibhav Sisinity",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Raj shamani",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://images.unsplash.com/photo-1498050108023-c5249f4df085?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80",
            createStorystatus: false,
          ),
          storyCard(
            labeltext: "Kunal sha",
            avatar:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
            story:
                "https://images.unsplash.com/photo-1518770660439-4636190af475?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80",
            createStorystatus: false,
          )
        ],
      ),
    );
  }
}
