import 'package:flutter/material.dart';

class headerbuttonSection extends StatelessWidget {
  final Widget buttonOne;
  final Widget buttonTwo;
  final Widget buttonThree;
  headerbuttonSection({
    @required this.buttonTwo,
    @required this.buttonOne,
    @required this.buttonThree,
  });
  Widget headerButton({
    @required void Function() opfun,
    @required IconData obj,
    @required Color colour,
    @required String label,
  }) {
    return FlatButton.icon(
      onPressed: opfun,
      icon: Icon(
        obj,
        color: colour,
      ),
      label: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget verDiv = VerticalDivider(
      thickness: 1,
    );
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          buttonOne,
          verDiv,
          buttonTwo,
          verDiv,
          buttonThree,
        ],
      ),
    );
  }
}
