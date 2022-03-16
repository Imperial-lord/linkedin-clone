import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smart_reply/smart_reply.dart';

import '../../helpers/chat_handler.dart';
import '../../stores/chat_store.dart';
import '../../stores/user_store.dart';

class ChatSuggestions extends StatefulWidget {
  const ChatSuggestions({Key? key}) : super(key: key);

  @override
  State<ChatSuggestions> createState() => _ChatSuggestionsState();
}

class _ChatSuggestionsState extends State<ChatSuggestions> {
  late String id, peerId, groupChatId;
  List suggestions = ['Hi there!', 'How are you?', 'Hope you are good.'];

  @override
  void initState() {
    fetchChatIdPair();
    super.initState();
  }

  fetchChatIdPair() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    ChatStore chatStore = Provider.of<ChatStore>(context, listen: false);

    id = userStore.user.uid!;
    peerId = chatStore.peerId;
    groupChatId = getGroupChatId(id, peerId);
  }

  Widget chip(String label) {
    // Customised Chip widget
    return Expanded(
      child: GestureDetector(
          onTap: () {
            ChatStore chatStore =
                Provider.of<ChatStore>(context, listen: false);
            String groupChatId = getGroupChatId(id, peerId);
            chatStore.onSendMessage(label, groupChatId, id);
          },
          child: Chip(label: Center(child: Text(label)))),
    );
  }

  void getSuggestions(messages) async {
    // Fetch suggestions using Google ML Kit and rebuild page
    List oldSuggestions = suggestions;
    suggestions = await const SmartReply().suggestReplies(messages);
    if (!listEquals(oldSuggestions, suggestions)) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatStore>(builder: (_, chatStore, __) {
      return StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('Messages')
              .doc(groupChatId)
              .collection(groupChatId)
              .snapshots(),
          builder: (context, snapshot) {
            getSuggestions(chatStore.chatMessages);
            return Padding(
              padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
              child: (suggestions.isNotEmpty)
                  ? Row(children: [
                      chip(suggestions[0]),
                      const SizedBox(width: 5),
                      chip(suggestions[1]),
                      const SizedBox(width: 5),
                      chip(suggestions[2]),
                    ])
                  : Container(),
            );
          });
    });
  }
}
