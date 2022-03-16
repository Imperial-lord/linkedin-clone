import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:linkedin_clone/helpers/meeting_handler.dart';
import 'package:linkedin_clone/services/validations.dart';

import '../../screens/meeting/meeting_webview.dart';

Widget showChatItemBasedOnType(
    String type, DocumentSnapshot document, BuildContext context, String name) {
  // Expand this more as per need
  if (type == 'mli') {
    // Meeting Link Instant
    return instantMeetingItemContent(document, context, name);
  } else if (type == 'mls') {
    // Meeting Link Scheduled
    return scheduledMeetingItemContent(document, context, name);
  } else {
    // Chat text item
    return chatItemContent(document);
  }
}

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

Widget instantMeetingItemContent(
    DocumentSnapshot document, BuildContext context, String name) {
  String url = document.get('content').split('-')[1];
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 20, top: 5, bottom: 5),
    child: OutlinedButton(
      onPressed: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => MeetingWebView(meetingUrl: url)));
      },
      child: SizedBox(
        height: 60,
        child: Row(
          children: [
            const Icon(Icons.video_call),
            const VerticalDivider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${name.split(' ')[0]}'s meeting",
                    style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 5),
                const Text('Join video meeting')
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

Widget scheduledMeetingItemContent(
    DocumentSnapshot document, BuildContext context, String name) {
  String url = document.get('content').split('-')[1];
  Map meetingDetails = fetchDetailsFromEncodedScheduledMeetingUrl(url);
  return Padding(
    padding: const EdgeInsets.only(left: 50, right: 20, top: 5, bottom: 5),
    child: OutlinedButton(
      onPressed: () {
        bool meetingJoinedTooEarly = checkIfJoinMeetingTooEarly(
            meetingDetails['date'], meetingDetails['time'], context);
        if (!meetingJoinedTooEarly) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => MeetingWebView(meetingUrl: url)));
        }
      },
      child: SizedBox(
        height: 100,
        child: Row(
          children: [
            const Icon(Icons.video_call),
            const VerticalDivider(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${name.split(' ')[0]}'s meeting",
                    style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(height: 5),
                Text(
                    'Time: ${meetingDetails['date']} ${meetingDetails['time']}',
                    style: Theme.of(context).textTheme.caption),
                Text('Duration: ${meetingDetails['duration']}',
                    style: Theme.of(context).textTheme.caption),
                const SizedBox(height: 5),
                const Text('Join video meeting')
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
