import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/chat/chat_screen.dart';
import 'package:linkedin_clone/stores/user_store.dart';
import 'package:provider/provider.dart';

import '../../requests/firebase_data.dart';
import '../../stores/chat_store.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);
  static String id = 'chat-list';

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  onPressedHandler() async {
    // peerId will be known when we tap on it
    String peerId = '', peerImage = '', myImage = '';

    String MARYID = 'u6TJyfoyyLdGzYsmtIC8qD09bbA2',
        MARYIMAGE = 'https://i.pravatar.cc/192?img=5';
    String ABID = 'cjqsIpofEeae0y9NMnCfJUhn4hb2',
        ABIMAGE = 'https://i.pravatar.cc/192?img=8';

    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    String id = userStore.user.uid!;

    if (id == MARYID) {
      myImage = MARYIMAGE;
      peerId = ABID;
      peerImage = ABIMAGE;
    } else {
      myImage = ABIMAGE;
      peerId = MARYID;
      peerImage = MARYIMAGE;
    }

    ChatStore chatStore = Provider.of<ChatStore>(context, listen: false);
    chatStore.setPeerId(peerId);
    Map userData = await getUserDataFromFirestore(peerId);
    chatStore.setPeerNameAndHeadline(userData);
    chatStore.setProfileImages(peerImage, myImage);
    Navigator.pushNamed(context, ChatScreen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('Messaging'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.rate_review))
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            CupertinoTextField(
              style: Theme.of(context).textTheme.subtitle1,
              prefix: const Padding(
                  padding: EdgeInsets.all(15),
                  child: Icon(Icons.search, color: Colors.grey)),
              placeholder: 'Search messages',
              suffix: const Padding(
                padding: EdgeInsets.all(10),
                child: Icon(Icons.tune, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for (int i = 0; i < 10; i++)
                      Column(
                        children: [
                          ListTile(
                            onTap: onPressedHandler,
                            isThreeLine: true,
                            leading: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://i.pravatar.cc/192?img=$i')),
                            title: const Text('Neeta Singh Mehta'),
                            subtitle: const Text(
                                'Exciting engineering role at Amazon. You can apply now here and contact with me to proceed further with the interviews',
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2),
                          ),
                          const Divider(indent: 60),
                        ],
                      ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
