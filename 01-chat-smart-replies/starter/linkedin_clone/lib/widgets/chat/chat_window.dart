import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../helpers/chat_handler.dart';
import '../../stores/chat_store.dart';
import '../../stores/user_store.dart';
import 'common_chat_widgets.dart';

class ChatWindow extends StatefulWidget {
  const ChatWindow({Key? key}) : super(key: key);

  @override
  State<ChatWindow> createState() => _ChatWindowState();
}

class _ChatWindowState extends State<ChatWindow> {
  late String id, peerId, peerName, myName, peerImage, myImage;

  List<QueryDocumentSnapshot> listMessage = List.from([]);
  String groupChatId = '';
  late ChatStore chatStore;

  late ScrollController listScrollController;

  @override
  void initState() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    chatStore = Provider.of<ChatStore>(context, listen: false);

    listScrollController = chatStore.listScrollController;
    id = userStore.user.uid!;
    myName = userStore.user.name!;
    peerId = chatStore.peerId;
    peerName = chatStore.peerName;
    peerImage = chatStore.peerImage;
    myImage = chatStore.myImage;
    groupChatId = getGroupChatId(id, peerId);
    super.initState();
  }

  Widget buildItem(int index, DocumentSnapshot document) {
    if (document.get('idFrom') == id) {
      // Right (my message)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isFirstMessageUser(
                  index, document.get('content'), listMessage, peerId)
              ? const SizedBox(height: 10)
              : Container(),
          isFirstMessageUser(
                  index, document.get('content'), listMessage, peerId)
              ? chatItemHeader(myName, myImage, document, context)
              : Container(),
          chatItemContent(document),
        ],
      );
    } else {
      // Left (peer message)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          isFirstMessageUser(index, document.get('content'), listMessage, id)
              ? const SizedBox(height: 10)
              : Container(),
          isFirstMessageUser(index, document.get('content'), listMessage, id)
              ? chatItemHeader(peerName, peerImage, document, context)
              : Container(),
          chatItemContent(document),
        ],
      );
    }
  }

  Widget buildListMessage() {
    // The scrollable list of all messages
    // Note that you can add a limit to the messages fetched at a time
    // to reduce the number of documents read
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        // user intro

        // add divider between chat and user intro

        // add chat stuff here

        // add the chat input stuff here
      ],
    );
  }
}
