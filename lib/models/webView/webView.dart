import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class webView extends StatefulWidget {
  const webView({super.key,required this.url});
  final String url;

  @override
  State<webView> createState() => _webViewState();
}

class _webViewState extends State<webView> {
  late final controller=WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse(widget.url));
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: WebViewWidget(controller: controller,));
  }
}
