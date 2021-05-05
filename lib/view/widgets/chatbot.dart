import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(chatBot());

// ignore: camel_case_types
class chatBot extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        body: WebView(
          initialUrl: "https://sanjit.hexcode.ml/",
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}