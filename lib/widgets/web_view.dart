import 'package:flutter/material.dart';
import 'package:news/widgets/custom_text.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CustomWebWidget extends StatelessWidget {
  const CustomWebWidget({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..loadRequest(Uri.parse(url))
      ..setJavaScriptMode(JavaScriptMode.unrestricted);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const CustomText(
          'The Article',
          color: Colors.blue,
        ),
        centerTitle: true,
      ),
      body: WebViewWidget(
        controller: controller,
      ),
    );
  }
}
