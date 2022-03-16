import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:smart_reply/smart_reply.dart';

part 'chat_store.g.dart';

class ChatStore = ChatStoreBase with _$ChatStore;

abstract class ChatStoreBase with Store {
  // We are concerned about maintaining the peerData all throughout.
  // We are gonna need 3 things only -
  // Name and Headline (and Image later on)
  // We will have the peerId given to us already

  @observable
  String peerName = 'Sample name';
  @observable
  String peerHeadline = 'Sample headline';
  @observable
  String peerId = 'a_random_id'; // Just a random ID
  @observable
  String peerImage = 'a_image_link', myImage = 'a_image_link_too';
  @observable
  ScrollController listScrollController = ScrollController();

  // Chat suggestions
  @observable
  List<TextMessage> chatMessages = [];

  @action
  void addChatMessages(String text, String uid) {
    bool isLocalUser = true;
    if (uid == peerId) isLocalUser = false;
    chatMessages.add(TextMessage(
        text: text,
        timestamp: DateTime.now(),
        userId: uid,
        isLocalUser: isLocalUser));
  }

  @action
  void setPeerId(String peerId) {
    this.peerId = peerId;
  }

  @action
  setProfileImages(String peerImage, String myImage) {
    this.peerImage = peerImage;
    this.myImage = myImage;
  }

  @action
  void setPeerNameAndHeadline(Map userData) {
    peerName = userData['name'];
    peerHeadline = userData['jobDetails']['jobTitle'] +
        ' at ' +
        userData['jobDetails']['recentCompany'];
  }

  @action
  void onSendMessage(String content, String groupChatId, String id) {
    if (content.trim() != '') {
      var documentReference = FirebaseFirestore.instance
          .collection('Messages')
          .doc(groupChatId)
          .collection(groupChatId)
          .doc(DateTime.now().millisecondsSinceEpoch.toString());

      FirebaseFirestore.instance.runTransaction((transaction) async {
        transaction.set(
          documentReference,
          {
            'idFrom': id,
            'idTo': peerId,
            'timestamp': DateTime.now().millisecondsSinceEpoch.toString(),
            'content': content,
          },
        );
      });
      listScrollController.animateTo(0.0,
          duration: const Duration(milliseconds: 300), curve: Curves.easeOut);
    }
  }
}
