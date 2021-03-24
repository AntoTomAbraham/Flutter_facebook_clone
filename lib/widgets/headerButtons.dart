import 'package:flutter/material.dart';

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
