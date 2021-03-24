import 'package:facebook_app/widgets/activeAvatar.dart';
import 'package:facebook_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class roomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(10),
        children: [
          activefriends(),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1268176490979561472/aorwOh3s_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1248597270263508993/8uODUkg2_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1160118992146554880/fj7rjazO_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1190747917998546944/D3U5FNa7_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1286232774354128898/fcBxknjQ_400x400.jpg",
          ),
          Avatar(
            srcc:
                "https://pbs.twimg.com/profile_images/1364491704817098753/V22-Luf7_400x400.jpg",
          ),
        ],
      ),
    );
  }

  Widget activefriends() {
    return Container(
      padding: EdgeInsets.only(
        right: 5,
        left: 5,
      ),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        onPressed: () {
          print("Create Room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple,
        ),
        label: Text(
          "Create \nRoom",
          style: TextStyle(color: Colors.blue, fontSize: 15),
        ),
        borderSide: BorderSide(
          color: Colors.blue[100],
          width: 2,
        ),
      ),
    );
  }
}
