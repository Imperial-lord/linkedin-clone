import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Widget chatItemHeader(String name, String image, DocumentSnapshot document,
    BuildContext context) {
  return Row(
    children: [
      CircleAvatar(backgroundImage: NetworkImage(image)),
      const SizedBox(width: 10),
      Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      const Text(' • ', style: TextStyle(color: Colors.black54)),
      Text(
        DateFormat('dd MMM kk:mm').format(DateTime.fromMillisecondsSinceEpoch(
            int.parse(document.get('timestamp')))),
        style: Theme.of(context).textTheme.caption,
      ),
    ],
  );
}

Widget chatItemContent(DocumentSnapshot document) {
  return Container(
    constraints: const BoxConstraints(maxWidth: 400),
    child: Text(document.get('content')),
    padding: const EdgeInsets.symmetric(horizontal: 50),
  );
}
