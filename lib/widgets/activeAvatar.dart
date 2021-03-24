import 'package:facebook_app/widgets/avatar.dart';
import 'package:flutter/material.dart';

class activeAvatar extends StatelessWidget {
  String link;
  activeAvatar({link});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Avatar(srcc: link),
        Positioned(
          bottom: 0,
          right: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Container(
              width: 15,
              height: 15,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  )),
            ),
          ),
        )
      ],
    );
  }
}
