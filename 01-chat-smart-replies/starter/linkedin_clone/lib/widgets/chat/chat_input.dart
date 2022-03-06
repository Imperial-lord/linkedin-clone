import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../helpers/chat_handler.dart';
import '../../stores/chat_store.dart';
import '../../stores/user_store.dart';

class ChatInput extends StatefulWidget {
  const ChatInput({Key? key}) : super(key: key);

  @override
  State<ChatInput> createState() => _ChatInputState();
}

class _ChatInputState extends State<ChatInput>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  bool isPlaying = false;
  final TextEditingController textEditingController = TextEditingController();
  late String id, peerId;

  List<String> menuLabels = [
    'Attachment',
    'Camera',
    'Video',
    'Photos',
    'GIF',
    'Mention'
  ];
  List<Icon> menuIcons = [
    const Icon(Icons.attach_file),
    const Icon(Icons.camera_alt),
    const Icon(Icons.videocam),
    const Icon(Icons.image),
    const Icon(Icons.gif, size: 40),
    const Icon(Icons.alternate_email),
  ];

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
    fetchChatIdPair();
    super.initState();
  }

  fetchChatIdPair() {
    UserStore userStore = Provider.of<UserStore>(context, listen: false);
    ChatStore chatStore = Provider.of<ChatStore>(context, listen: false);

    id = userStore.user.uid!;
    peerId = chatStore.peerId;
  }

  void toggleAnimatedButtonHandler() {
    if (!isPlaying) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
    setState(() {
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  void submitMessageHandler(ChatStore chatStore) async {
    String groupChatId = getGroupChatId(id, peerId);
    chatStore.onSendMessage(textEditingController.text.trim(), groupChatId, id);
    textEditingController.clear();
    FocusManager.instance.primaryFocus?.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ChatStore>(builder: (_, chatStore, __) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // add suggestions widget here

          const Divider(),
          Row(
            children: [
              OutlinedButton(
                  onPressed: toggleAnimatedButtonHandler,
                  style: OutlinedButton.styleFrom(shape: const CircleBorder()),
                  child: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: _animationController)),
              Flexible(
                child: CupertinoTextField(
                  controller: textEditingController,
                  onSubmitted: (value) => submitMessageHandler(chatStore),
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(Radius.circular(5))),
                  maxLines: 4,
                  minLines: 1,
                  placeholder: 'Write a message...',
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => submitMessageHandler(chatStore),
                color: Colors.blue,
              ),
            ],
          ),
          Visibility(visible: isPlaying, child: const Divider()),
          Visibility(visible: isPlaying, child: const SizedBox(height: 10)),
          Visibility(
            visible: isPlaying,
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 4,
              children: <Widget>[
                for (int i = 0; i < menuLabels.length; i++)
                  Column(children: [
                    OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: const CircleBorder(),
                          minimumSize: const Size(50, 50),
                        ),
                        onPressed: () {},
                        child: menuIcons[i]),
                    const SizedBox(height: 5),
                    Text(menuLabels[i]),
                  ])
              ],
            ),
          ),
        ],
      );
    });
  }
}
