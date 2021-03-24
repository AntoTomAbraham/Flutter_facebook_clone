import 'package:facebook_app/sections/headerbuttonSection.dart';
import 'package:facebook_app/widgets/avatar.dart';
import 'package:facebook_app/widgets/blueTick.dart';
import 'package:flutter/material.dart';

import 'headerButtons.dart';

class postCard extends StatelessWidget {
  final String avatar;
  final String name;
  final String publishedat;
  final String postTitle;
  final String postimage;
  final bool showblueTick;
  final String shareCount;
  final String likeCount;
  final String commentCount;
  postCard({
    @required this.avatar,
    @required this.name,
    @required this.publishedat,
    @required this.postTitle,
    @required this.postimage,
    this.showblueTick = false,
    @required this.likeCount,
    @required this.shareCount,
    @required this.commentCount,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardheader(),
          titleSection(),
          imageSection(),
          footerSection(),
          Divider(),
          headerbuttonSection(
            buttonOne: headerButton(
              opfun: () {
                print("header1");
              },
              obj: Icons.thumb_up,
              colour: Colors.grey[700],
              label: "Live",
            ),
            buttonTwo: headerButton(
              opfun: () {
                print("header1");
              },
              obj: Icons.message,
              colour: Colors.grey[700],
              label: "comment",
            ),
            buttonThree: headerButton(
              opfun: () {
                print("header1");
              },
              obj: Icons.share,
              colour: Colors.grey[700],
              label: "share",
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText(@required String label) {
    return Text(
      label == null ? " " : label,
      style: TextStyle(
        color: Colors.grey[700],
      ),
    );
  }

  Widget footerSection() {
    return Container(
      height: 50,
      padding: EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 20,
                  child: Icon(
                    Icons.thumb_up,
                    color: Colors.white,
                    size: 10,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                displayText(likeCount),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                displayText(commentCount),
                SizedBox(
                  width: 3,
                ),
                displayText("comments"),
                SizedBox(
                  width: 5,
                ),
                displayText(shareCount),
                SizedBox(
                  width: 3,
                ),
                displayText("shares"),
                SizedBox(
                  width: 3,
                ),
                Avatar(
                  srcc: avatar,
                  greenlight: false,
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: 5,
                ),
                IconButton(
                    icon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey[700],
                    ),
                    onPressed: () {
                      print("Drop Down Pressed");
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget imageSection() {
    return Container(
        padding: EdgeInsets.only(
          top: 5,
          bottom: 5,
        ),
        child: Image.network(
          postimage,
        ));
  }

  Widget titleSection() {
    return postTitle != null && postTitle != ""
        ? Container(
            padding: EdgeInsets.only(
              bottom: 5,
              left: 10,
              right: 10,
            ),
            child: Text(
              postTitle == null ? "" : postTitle,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          )
        : SizedBox();
  }

  Widget postcardheader() {
    return ListTile(
      leading: Avatar(
        srcc: avatar,
        displayborder: false,
        greenlight: false,
      ),
      title: Row(
        children: [
          Text(
            name,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          showblueTick ? blueTick() : Container()
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedat == null ? "" : publishedat),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 15,
          )
        ],
      ),
      trailing: IconButton(
          icon: Icon(
            Icons.more_horiz,
            color: Colors.grey[700],
          ),
          onPressed: () {
            print("More menu");
          }),
    );
  }
}
