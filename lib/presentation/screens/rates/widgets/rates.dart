import 'package:epilepsy/constants/api.dart';
import 'package:epilepsy/controllers/profile_controller.dart';
import 'package:epilepsy/controllers/rates_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:async';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

class Rates extends StatefulWidget {
  const Rates({Key? key}) : super(key: key);

  @override
  _RatesState createState() => _RatesState();
}

class _RatesState extends State<Rates> {
  int userId = Get.find<ProfileController>().profile.value.id;
  final controller = Get.find<RatesController>();
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();

  @override
  void initState() {
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          WebView(
            initialUrl: 'http://cepi.xartcode.uz' + Api.rates(userId),
            onWebViewCreated: (WebViewController webViewController) {
              controller.isRatesLoading(true);
              _controller.complete(webViewController);
            },
            javascriptMode: JavascriptMode.unrestricted,
            onProgress: (int progress) {
              print("WebView is loading (progress : $progress%)");
            },
            navigationDelegate: (NavigationRequest request) {
              if (request.url.startsWith('https://www.youtube.com/')) {
                print('blocking navigation to $request}');
                return NavigationDecision.prevent;
              }
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            },
            onPageStarted: (String url) {
              print('Page started loading: $url');
            },
            onPageFinished: (String url) {
              controller.isRatesLoading(false);
              print('Page finished loading: $url');
            },
            gestureNavigationEnabled: true,
          ),
          Obx(() {
            if (controller.isRatesLoading.value) {
              return const Positioned(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }
            return const SizedBox();
          })
        ],
      ),
    );
  }
}
