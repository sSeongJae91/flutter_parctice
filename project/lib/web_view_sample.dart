import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_android/webview_flutter_android.dart';
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

class WebViewSample extends StatefulWidget {
  const WebViewSample({super.key});

  @override
  State<WebViewSample> createState() => _WebViewSampleState();
}

class _WebViewSampleState extends State<WebViewSample> {

  late final WebViewController _controller;

  @override
 void initState() {
  super.initState();

  late final PlatformWebViewControllerCreationParams params;
  if (WebViewPlatform.instance is WebKitWebViewPlatform) {
   params = WebKitWebViewControllerCreationParams(
    allowsInlineMediaPlayback: true,
    mediaTypesRequiringUserAction: const <PlaybackMediaTypes>{},
   );
  } else {
   params = const PlatformWebViewControllerCreationParams();
  }

  final WebViewController controller =
    WebViewController.fromPlatformCreationParams(params);

  controller
   ..setJavaScriptMode(JavaScriptMode.unrestricted)
   ..setBackgroundColor(const Color(0x00000000))
   ..setNavigationDelegate(
    NavigationDelegate(
     onProgress: (int progress) {
      debugPrint('WebView is loading (progress : $progress%)');
     },
     onPageStarted: (String url) {
      debugPrint('Page started loading: $url');
     },
     onPageFinished: (String url) {
      debugPrint('Page finished loading: $url');
     },
     onWebResourceError: (WebResourceError error) {
      debugPrint('''
       Page resource error:
        code: ${error.errorCode}
        description: ${error.description}
        errorType: ${error.errorType}
        isForMainFrame: ${error.isForMainFrame}
     ''');
     },
     onNavigationRequest: (NavigationRequest request) {
      debugPrint('allowing navigation to ${request.url}');
      return NavigationDecision.navigate;
     },
    ),
   )
   ..addJavaScriptChannel(
    'Toaster',
    onMessageReceived: (JavaScriptMessage message) {
     ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message.message)),
     );
    },
   )
   ..loadRequest(Uri.parse('https://flutter.dev/'));

  if (controller.platform is AndroidWebViewController) {
   AndroidWebViewController.enableDebugging(true);
   (controller.platform as AndroidWebViewController)
     .setMediaPlaybackRequiresUserGesture(false);
  }

  _controller = controller;
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: WebViewWidget(
          controller: _controller,
        ),
      ),
    );
  }
}

//stful 입력 후 tab