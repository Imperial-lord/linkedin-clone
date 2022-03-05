import 'package:flutter/material.dart';

Widget dividerWithLabel(String label) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(children: <Widget>[
      const Expanded(child: Divider()),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Text(label),
      ),
      const Expanded(child: Divider()),
    ]),
  );
}
