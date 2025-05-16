// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// import '../../../../config/theme/theme.dart';
// import '../../../../core/core.dart';
// import '../../../../libraries/libraries.dart';

// class WebViewPage extends StatefulWidget {
//   const WebViewPage(
//     this.url, {
//     super.key,
//     this.title,
//   });

//   final String? title;
//   final String url;

//   @override
//   State<WebViewPage> createState() => _WebViewPageState();
// }

// class _WebViewPageState extends State<WebViewPage> {
//   late final WebViewController _controller;

//   bool isLoading = true;

//   @override
//   void initState() {
//     super.initState();

//       PlatformWebViewControllerCreationParams params;

//     final controller = WebViewController.fromPlatformCreationParams(
//       params,
//       onPermissionRequest: (request) {},
//     );
//     if (WebViewPlatform.instance is WebViewPlatform) {
//       params = PlatformWebViewControllerCreationParams();
//     } else {
//       params = const PlatformWebViewControllerCreationParams();
//     }

//     // ignore: cascade_invocations
//     controller
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(AppColors.neutral10)
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onPageFinished: (url) {
//             setState(() {
//               isLoading = false;
//             });
//           },
//         ),
//       )
//       ..loadRequest(Uri.parse(widget.url));

//     // if (controller.platform is AndroidWebViewController) {
//     //   AndroidWebViewController.enableDebugging(true);
//     //   (controller.platform as AndroidWebViewController)
//     //       .setMediaPlaybackRequiresUserGesture(false);
//     // }

//     _controller = controller;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         if (await _controller.canGoBack()) {
//           await _controller.goBack();
//           return false;
//         }
//         return true;
//       },
//       child: Scaffold(
//         backgroundColor: AppColors.neutral10,
//         appBar: widget.title != null
//             ? PrimaryAppBar(
//                 title: widget.title!,
//                 onBackPressed: () {
//                   context.router.popForced();
//                 },
//               )
//             : null,
//         body: Stack(
//           children: [
//             SafeArea(
//               child: WebViewWidget(
//                 controller: _controller,
//               ),
//             ),
//             if (isLoading)
//               const ColoredBox(
//                 color: AppColors.neutral10,
//                 child: Center(
//                   child: AdaptiveLoadingIndicator(
//                     size: Sizes.p28,
//                   ),
//                 ),
//               ),
//           ],
//         ),
//       ),
//     );
//   }
// }
