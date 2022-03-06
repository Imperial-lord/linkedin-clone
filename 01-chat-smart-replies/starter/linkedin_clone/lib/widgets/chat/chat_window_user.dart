import 'package:flutter/material.dart';
import 'package:linkedin_clone/stores/chat_store.dart';
import 'package:provider/provider.dart';

class ChatWindowUser extends StatefulWidget {
  const ChatWindowUser({Key? key}) : super(key: key);

  @override
  State<ChatWindowUser> createState() => _ChatWindowUserState();
}

class _ChatWindowUserState extends State<ChatWindowUser> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ChatStore>(builder: (_, chatStore, __) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    'https://upload.wikimedia.org/wikipedia/commons/9/9a/Gull_portrait_ca_usa.jpg'),
              ),
            ),
            Text('Random name', style: Theme.of(context).textTheme.subtitle2),
            const Text(
                'XYZ at PQR Company • Youtube • Mathematics & Computing, IIT Guwahati'),
          ],
        ),
      );
    });
  }
}
