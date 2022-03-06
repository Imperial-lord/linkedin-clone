import 'package:flutter/material.dart';

class ChatSuggestions extends StatefulWidget {
  const ChatSuggestions({Key? key}) : super(key: key);

  @override
  State<ChatSuggestions> createState() => _ChatSuggestionsState();
}

class _ChatSuggestionsState extends State<ChatSuggestions> {
  // Declare variables for Ids and suggestions

  @override
  void initState() {
    fetchChatIdPair();
    super.initState();
  }

  fetchChatIdPair() {
    // fetch the Ids and the groupChatId
  }

  Widget chip(String label) {
    // Customised Chip widget
    return Chip(label: Center(child: Text(label)));
  }

  void getSuggestions(messages) async {
    // Fetch suggestions using Google ML Kit and rebuild page
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
