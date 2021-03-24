import 'package:facebook_app/widgets/appbarIcons.dart';
import 'package:flutter/material.dart';
import 'package:facebook_app/widgets/avatar.dart';

class storyCard extends StatelessWidget {
  final String labeltext;
  final String story;
  final String avatar;
  final bool createStorystatus;
  storyCard({
    @required this.labeltext,
    @required this.story,
    @required this.avatar,
    this.createStorystatus = false,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(
        left: 5,
        right: 5,
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              story,
            ),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: createStorystatus
                ? appbarIcons(
                    buttonAction: () {
                      print("Story button pressed");
                    },
                    icon: Icon(
                      Icons.add,
                      color: Colors.blue,
                    ),
                  )
                : Avatar(
                    srcc: avatar,
                    displayborder: true,
                    greenlight: false,
                    width: 35,
                    height: 35,
                  ),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                labeltext != null ? labeltext : "N/A",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ))
        ],
      ),
    );
  }
}
