String getGroupChatId(String id, String peerId) {
  String groupChatId;
  if (id.hashCode <= peerId.hashCode) {
    groupChatId = '$id-$peerId';
  } else {
    groupChatId = '$peerId-$id';
  }
  return groupChatId;
}

bool isFirstMessageUser(
    int index, String content, List listMessage, String id) {
  if (index == listMessage.length - 1 ||
      (index < listMessage.length - 1 &&
          listMessage[index + 1].get('idFrom') == id)) {
    return true;
  } else {
    return false;
  }
}
