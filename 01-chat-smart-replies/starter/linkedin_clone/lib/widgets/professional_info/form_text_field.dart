import 'package:flutter/material.dart';

Widget formTextField(
    String title, TextEditingController controller, BuildContext context) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(color: Colors.grey),
        ),
        TextField(controller: controller),
      ],
    ),
  );
}
