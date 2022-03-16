import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        userAgent:
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36",
        allowsInlineMediaPlayback: true,
        javascriptMode: JavascriptMode.unrestricted,
        initialUrl: 'https://' + widget.meetingUrl,
      ),
    );
  }
}
