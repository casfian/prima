import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:async';

class FAQ extends StatelessWidget {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAQ'),
        backgroundColor: Colors.blue[900],
      ),
      body: WebView(
        initialUrl: 'https://www.pr1ma.my/faq.php?page=faq&lang=en',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController webViewController) {
          _controller.complete(webViewController);
        },
        onProgress: (int progress) {
          print("WebView is loading (progress : $progress%)");
        },
      ),
    );
  }
}
