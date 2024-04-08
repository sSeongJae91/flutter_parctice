import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class InappWebViewSample extends StatefulWidget {
  const InappWebViewSample({super.key});

  @override
  State<InappWebViewSample> createState() => _InappWebViewSampleState();
}

class _InappWebViewSampleState extends State<InappWebViewSample> {

  final List tabUrlList = [
    "https://flutter.dev/multi-platform/mobile",
    "https://flutter.dev/multi-platform/web",
    "https://flutter.dev/multi-platform/desktop"
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black87,
          centerTitle: true, 
          title: const Text("Webview Tab"),
          bottom: const TabBar(
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(width: 5, color: Colors.blue)
            ),
            labelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.phone)),
              Tab(icon: Icon(Icons.web)),
              Tab(icon: Icon(Icons.desktop_mac)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(tabUrlList[0])
              ),
              gestureRecognizers: Set()..add(Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer())),
            ),
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(tabUrlList[1])
              ),
              gestureRecognizers: Set()..add(Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer())),
            ),
            InAppWebView(
              initialUrlRequest: URLRequest(
                url: Uri.parse(tabUrlList[2])
              ),
              gestureRecognizers: Set()..add(Factory<VerticalDragGestureRecognizer>(() => VerticalDragGestureRecognizer())),
            ),
          ],
        ),
      ),
    );
  }
}