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
          sugggestionImage(),
          suggestionDetails(),
        ],
      ),
    );
  }
}

Widget sugggestionImage() {
  return Positioned(
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
  );
}

Widget suggestionDetails() {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      height: 140,
      color: Colors.grey[200],
      child: Column(
        children: [
          ListTile(
            title: Text("Mark suckerburg"),
            subtitle: Text("12 Mutual friends"),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 10,
              bottom: 10,
              right: 10,
            ),
            child: Row(
              children: [
                flatbutton(
                    buttonaction: () {
                      print("Friend request");
                    },
                    buttonIcon: Icons.add,
                    btcolor: Colors.blue[700],
                    bttextcolor: Colors.white,
                    btIconcolor: Colors.white,
                    btText: "Add friend")
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget flatbutton({
  @required void Function() buttonaction,
  @required IconData buttonIcon,
  @required Color btcolor,
  @required Color bttextcolor,
  @required Color btIconcolor,
  @required String btText,
}) {
  return FlatButton.icon(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))),
    onPressed: buttonaction,
    icon: Icon(
      buttonIcon,
      color: btIconcolor,
    ),
    label: Text(
      btText,
      style: TextStyle(color: bttextcolor),
    ),
    color: btcolor,
  );
}
