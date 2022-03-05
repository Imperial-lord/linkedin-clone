import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/stores/chat_store.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:linkedin_clone/widgets/chat/chat_window.dart';
import 'package:provider/provider.dart';

import '../../helpers/chat_handler.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);
  static String id = 'chat-screen';

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.pop(context),
          ),
          title: Text(chatStore.peerName),
          actions: [
            // IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
            PopupMenuButton(
                itemBuilder: (_) => [
                      PopupMenuItem(
                          onTap: () => FirebaseFirestore.instance
                                  .collection('Messages')
                                  .doc(groupChatId)
                                  .collection(groupChatId)
                                  .get()
                                  .then((snapshot) {
                                for (DocumentSnapshot ds in snapshot.docs) {
                                  ds.reference.delete();
                                }
                              }),
                          child: const Text('Delete conversation'))
                    ]),
            IconButton(onPressed: () {}, icon: const Icon(Icons.video_call)),
          ],
        ),
        body: const SafeArea(
          child: ChatWindow(),
        ),
      );
    });
  }
}
