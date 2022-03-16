import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../helpers/chat_handler.dart';
import '../../stores/chat_store.dart';
import '../../stores/user_store.dart';

class ChatMeeting extends StatefulWidget {
  const ChatMeeting({Key? key}) : super(key: key);

  @override
  State<ChatMeeting> createState() => _ChatMeetingState();
}

class _ChatMeetingState extends State<ChatMeeting> {
  late String id, peerId, groupChatId;

  @override
  void initState() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    ChatStore chatStore = Provider.of<ChatStore>(context, listen: false);
    id = userStore.user.uid!;
    peerId = chatStore.peerId;
    groupChatId = getGroupChatId(id, peerId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatStore>(builder: (_, chatStore, __) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(),
          ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            leading: IconButton(
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(),
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.close, color: Colors.black54)),
            title: const Text('Create video meeting'),
          ),
          const Divider(),
          ListTile(
            onTap: () {
              // TODO: Finish this section
              // fetch instant meeting URL
              // add it to the DB by calling the function on chat store
              // Don't forget to pop out of the current screen.
            },
            leading: const Icon(Icons.flash_on, color: Colors.black54),
            title: const Text('Send instant meeting link'),
          ),
          ListTile(
            onTap: () {
              // TODO: Finish this section
              // Send to schedule meeting screen
              // Don't forget to pop out of the current screen.
            },
            leading: const Icon(Icons.event, color: Colors.black54),
            title: const Text('Schedule a meeting for later'),
            trailing:
                const Icon(Icons.keyboard_arrow_right, color: Colors.black54),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('You are using LinkedIn video meetings'),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                      padding: const EdgeInsets.only(left: 0)),
                  child: const Text('Select a different provider'),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
