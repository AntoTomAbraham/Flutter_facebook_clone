import 'package:facebook_app/sections/headerbuttonSection.dart';
import 'package:facebook_app/sections/roomSection.dart';
import 'package:facebook_app/sections/statusSection.dart';
import 'package:facebook_app/sections/storySection.dart';
import 'package:facebook_app/sections/suggestionSection.dart';
import 'package:facebook_app/widgets/appbarIcons.dart';
import 'package:facebook_app/widgets/headerButtons.dart';
import 'package:facebook_app/widgets/postCard.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget thinDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    Widget thickDivider = Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          actions: [
            appbarIcons(
              buttonAction: () {
                print("Searching");
              },
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 25,
              ),
            ),
            appbarIcons(
              buttonAction: () {
                print("chatting");
              },
              icon: Icon(
                Icons.chat,
                color: Colors.black,
                size: 25,
              ),
            ),
          ],
          backgroundColor: Colors.white,
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: ListView(
          children: [
            statusSection(),
            thinDivider,
            headerbuttonSection(
              buttonOne: headerButton(
                opfun: () {
                  print("Go Live");
                },
                obj: Icons.video_call,
                colour: Colors.red,
                label: "Live",
              ),
              buttonTwo: headerButton(
                opfun: () {
                  print("Take photo");
                },
                obj: Icons.photo_album,
                colour: Colors.green,
                label: "Photo",
              ),
              buttonThree: headerButton(
                opfun: () {
                  print("header1");
                },
                obj: Icons.video_call,
                colour: Colors.purple,
                label: "Room",
              ),
            ),
            thickDivider,
            roomSection(),
            thickDivider,
            storySection(),
            thickDivider,
            postCard(
              name: "Vaibhav Sisnity",
              avatar:
                  "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
              publishedat: "7h ago",
              postTitle: "Be Productive!",
              postimage:
                  "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
              showblueTick: true,
              likeCount: "2.4k",
              shareCount: "124",
              commentCount: "240",
            ),
            thickDivider,
            postCard(
              name: "Hustle!",
              avatar:
                  "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
              publishedat: "7h ago",
              postTitle: "Be Productive!",
              postimage:
                  "https://tse1.mm.bing.net/th?id=OIP.xfDrrgbuARrYp3kYSRM6XQHaHa&pid=Api&P=0&w=300&h=300",
              showblueTick: true,
              likeCount: "2.4k",
              shareCount: "124",
              commentCount: "240",
            ),
            thickDivider,
            suggestionSection(),
            thickDivider,
            postCard(
              name: "Vaibhav Sisnity",
              avatar:
                  "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
              publishedat: "7h ago",
              postTitle: "cool!",
              postimage:
                  "https://tse2.mm.bing.net/th?id=OIP.RyIqeRjz2Eqv1357_qc-ugHaEK&pid=Api&P=0&w=318&h=179",
              showblueTick: true,
              likeCount: "2.4k",
              shareCount: "124",
              commentCount: "240",
            ),
            thickDivider
          ],
        ),
      ),
    );
  }
}
