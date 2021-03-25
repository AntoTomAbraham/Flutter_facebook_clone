import 'package:flutter/material.dart';

class suggestionCard extends StatelessWidget {
  String profileImage;
  String friendname;
  String mutual;
  suggestionCard({
    @required this.profileImage,
    @required this.friendname,
    @required this.mutual,
  });
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
          sugggestionImage(profileImage),
          suggestionDetails(friendname, mutual),
        ],
      ),
    );
  }
}

Widget sugggestionImage(String image) {
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
        image,
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget suggestionDetails(
  String text,
  String friends,
) {
  return Positioned(
    bottom: 0,
    right: 0,
    left: 0,
    child: Container(
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(
          color: Colors.grey[300],
          width: 1,
        ),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topLeft: Radius.circular(10),
        ),
      ),
      height: 143,
      child: Column(
        children: [
          ListTile(
            title: Text(text),
            subtitle: Text(friends),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                flatbutton(
                  buttonaction: () {
                    print("Friend request");
                  },
                  buttonIcon: Icons.add,
                  btcolor: Colors.blue[700],
                  bttextcolor: Colors.white,
                  btIconcolor: Colors.white,
                  btText: "Add friend",
                ),
                blankButton(
                  buttonaction: () {
                    print("remove");
                  },
                  btText: "Remove",
                  btcolor: Colors.grey[300],
                  bttextcolor: Colors.black,
                )
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget blankButton({
  @required void Function() buttonaction,
  @required String btText,
  @required Color btcolor,
  @required Color bttextcolor,
}) {
  return FlatButton(
    onPressed: buttonaction,
    child: Text(
      btText,
      style: TextStyle(color: bttextcolor),
    ),
    color: btcolor,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(4))),
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
