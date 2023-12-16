// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({super.key, required this.url});

  final String url;

  // 'https://codingislifee.blogspot.com'

  @override
  State<StatefulWidget> createState() => WebViewScreenState();
}

class WebViewScreenState extends State<WebViewScreen> {
  late WebViewController controller;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageStarted: (String url) {},
          onPageFinished: (String url) {
            setState(() {
              loading = false;
            });

            // controller.runJavaScript(
            //   'javascript:(function() { '
            //   "var footer = document.getElementsByTagName('footer')[0];"
            //   '})()',
            // );
          },
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.youtube.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.url));
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await controller.canGoBack()) {
          await controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Webview Demo'),
          actions: [
            IconButton(
              onPressed: () async {
                if (await controller.canGoBack()) {
                  await controller.goBack();
                }
              },
              icon: const Icon(Icons.arrow_left),
            ),
            IconButton(
              onPressed: () async {
                if (await controller.canGoForward()) {
                  await controller.goForward();
                }
              },
              icon: const Icon(Icons.arrow_right),
            ),
          ],
        ),
        body: loading == false
            ? WebViewWidget(controller: controller)
            : const Center(
                child: CircularProgressIndicator(),
              ),
      ),
    );
  }
}
