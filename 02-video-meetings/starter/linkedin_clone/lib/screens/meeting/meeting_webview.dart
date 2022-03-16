import 'package:flutter/material.dart';

class MeetingWebView extends StatefulWidget {
  final String meetingUrl;
  const MeetingWebView({Key? key, required this.meetingUrl}) : super(key: key);

  @override
  State<MeetingWebView> createState() => _MeetingWebViewState();
}

class _MeetingWebViewState extends State<MeetingWebView> {
  @override
  void initState() {
    super.initState();
    // TODO: Finish this section
    // Enable virtual display.
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Finish this section
    // Show the WebView - remember to specify the user agent
    // Hint: Make use of the meetingUrl
    return Container();
  }
}
