import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class appbarIcons extends StatelessWidget {
  final Icon icon;
  final void Function() buttonAction;
  appbarIcons({
    @required this.buttonAction,
    @required this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      child: IconButton(
        icon: icon,
        onPressed: buttonAction,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
      ),
    );
  }
}
