// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ChatStore on ChatStoreBase, Store {
  final _$peerNameAtom = Atom(name: 'ChatStoreBase.peerName');

  @override
  String get peerName {
    _$peerNameAtom.reportRead();
    return super.peerName;
  }

  @override
  set peerName(String value) {
    _$peerNameAtom.reportWrite(value, super.peerName, () {
      super.peerName = value;
    });
  }

  final _$peerHeadlineAtom = Atom(name: 'ChatStoreBase.peerHeadline');

  @override
  String get peerHeadline {
    _$peerHeadlineAtom.reportRead();
    return super.peerHeadline;
  }

  @override
  set peerHeadline(String value) {
    _$peerHeadlineAtom.reportWrite(value, super.peerHeadline, () {
      super.peerHeadline = value;
    });
  }

  final _$peerIdAtom = Atom(name: 'ChatStoreBase.peerId');

  @override
  String get peerId {
    _$peerIdAtom.reportRead();
    return super.peerId;
  }

  @override
  set peerId(String value) {
    _$peerIdAtom.reportWrite(value, super.peerId, () {
      super.peerId = value;
    });
  }

  final _$peerImageAtom = Atom(name: 'ChatStoreBase.peerImage');

  @override
  String get peerImage {
    _$peerImageAtom.reportRead();
    return super.peerImage;
  }

  @override
  set peerImage(String value) {
    _$peerImageAtom.reportWrite(value, super.peerImage, () {
      super.peerImage = value;
    });
  }

  final _$myImageAtom = Atom(name: 'ChatStoreBase.myImage');

  @override
  String get myImage {
    _$myImageAtom.reportRead();
    return super.myImage;
  }

  @override
  set myImage(String value) {
    _$myImageAtom.reportWrite(value, super.myImage, () {
      super.myImage = value;
    });
  }

  final _$listScrollControllerAtom =
      Atom(name: 'ChatStoreBase.listScrollController');

  @override
  ScrollController get listScrollController {
    _$listScrollControllerAtom.reportRead();
    return super.listScrollController;
  }

  @override
  set listScrollController(ScrollController value) {
    _$listScrollControllerAtom.reportWrite(value, super.listScrollController,
        () {
      super.listScrollController = value;
    });
  }

  final _$chatMessagesAtom = Atom(name: 'ChatStoreBase.chatMessages');

  @override
  List<TextMessage> get chatMessages {
    _$chatMessagesAtom.reportRead();
    return super.chatMessages;
  }

  @override
  set chatMessages(List<TextMessage> value) {
    _$chatMessagesAtom.reportWrite(value, super.chatMessages, () {
      super.chatMessages = value;
    });
  }

  final _$ChatStoreBaseActionController =
      ActionController(name: 'ChatStoreBase');

  @override
  void addChatMessages(String text, String uid) {
    final _$actionInfo = _$ChatStoreBaseActionController.startAction(
        name: 'ChatStoreBase.addChatMessages');
    try {
      return super.addChatMessages(text, uid);
    } finally {
      _$ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeerId(String peerId) {
    final _$actionInfo = _$ChatStoreBaseActionController.startAction(
        name: 'ChatStoreBase.setPeerId');
    try {
      return super.setPeerId(peerId);
    } finally {
      _$ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setProfileImages(String peerImage, String myImage) {
    final _$actionInfo = _$ChatStoreBaseActionController.startAction(
        name: 'ChatStoreBase.setProfileImages');
    try {
      return super.setProfileImages(peerImage, myImage);
    } finally {
      _$ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPeerNameAndHeadline(Map<dynamic, dynamic> userData) {
    final _$actionInfo = _$ChatStoreBaseActionController.startAction(
        name: 'ChatStoreBase.setPeerNameAndHeadline');
    try {
      return super.setPeerNameAndHeadline(userData);
    } finally {
      _$ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void onSendMessage(String content, String groupChatId, String id) {
    final _$actionInfo = _$ChatStoreBaseActionController.startAction(
        name: 'ChatStoreBase.onSendMessage');
    try {
      return super.onSendMessage(content, groupChatId, id);
    } finally {
      _$ChatStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
peerName: ${peerName},
peerHeadline: ${peerHeadline},
peerId: ${peerId},
peerImage: ${peerImage},
myImage: ${myImage},
listScrollController: ${listScrollController},
chatMessages: ${chatMessages}
    ''';
  }
}
