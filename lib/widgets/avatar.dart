import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  String srcc;
  final bool displayborder;
  final bool greenlight;
  final double width;
  final double height;
  Avatar({
    this.srcc,
    this.displayborder = false,
    this.greenlight = true,
    this.width = 50,
    this.height = 50,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            border: displayborder
                ? Border.all(
                    color: Colors.blue,
                    width: 3,
                  )
                : Border(),
            shape: BoxShape.circle,
          ),
          padding: EdgeInsets.only(
            left: 5,
            right: 5,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.network(
              srcc,
              width: width,
              height: height,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 1,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: greenlight
                ? Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white,
                          width: 2,
                        )),
                  )
                : Container(),
          ),
        )
      ],
    );
  }
}
