// import 'package:wanayasa/src/utils/helper.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// enum MenuOptions {
//   showUserAgent,
//   listCookies,
//   clearCookies,
//   addToCache,
//   listCache,
//   clearCache,
//   navigationDelegate,
//   doPostRequest,
//   loadLocalFile,
//   loadFlutterAsset,
//   loadHtmlString,
//   transparentBackground,
//   setCookie,
// }

// class SampleMenu extends StatelessWidget {
//   SampleMenu(this.controller, CookieManager? cookieManager, {Key? key})
//       : cookieManager = cookieManager ?? CookieManager(),
//         super(key: key);

//   final Future<WebViewController> controller;
//   late final CookieManager cookieManager;

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder<WebViewController>(
//       future: controller,
//       builder:
//           (BuildContext context, AsyncSnapshot<WebViewController> controller) {
//         return PopupMenuButton<MenuOptions>(
//           key: const ValueKey<String>('ShowPopupMenu'),
//           onSelected: (MenuOptions value) {
//             switch (value) {
//               case MenuOptions.showUserAgent:
//                 Helper.onShowUserAgent(controller.data!, context);
//                 break;
//               case MenuOptions.listCookies:
//                 Helper.onListCookies(controller.data!, context);
//                 break;
//               case MenuOptions.clearCookies:
//                 Helper.onClearCookies(context);
//                 break;
//               case MenuOptions.addToCache:
//                 Helper.onAddToCache(controller.data!, context);
//                 break;
//               case MenuOptions.listCache:
//                 Helper.onListCache(controller.data!, context);
//                 break;
//               case MenuOptions.clearCache:
//                 Helper.onClearCache(controller.data!, context);
//                 break;
//               case MenuOptions.navigationDelegate:
//                 Helper.onNavigationDelegateExample(controller.data!, context);
//                 break;
//               case MenuOptions.doPostRequest:
//                 Helper.onDoPostRequest(controller.data!, context);
//                 break;
//               case MenuOptions.loadLocalFile:
//                 Helper.onLoadLocalFileExample(controller.data!, context);
//                 break;
//               case MenuOptions.loadFlutterAsset:
//                 Helper.onLoadFlutterAssetExample(controller.data!, context);
//                 break;
//               case MenuOptions.loadHtmlString:
//                 Helper.onLoadHtmlStringExample(controller.data!, context);
//                 break;
//               case MenuOptions.transparentBackground:
//                 Helper.onTransparentBackground(controller.data!, context);
//                 break;
//               case MenuOptions.setCookie:
//                 Helper.onSetCookie(controller.data!, context);
//                 break;
//             }
//           },
//           itemBuilder: (BuildContext context) => <PopupMenuItem<MenuOptions>>[
//             PopupMenuItem<MenuOptions>(
//               value: MenuOptions.showUserAgent,
//               enabled: controller.hasData,
//               child: const Text('Show user agent'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.listCookies,
//               child: Text('List cookies'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.clearCookies,
//               child: Text('Clear cookies'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.addToCache,
//               child: Text('Add to cache'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.listCache,
//               child: Text('List cache'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.clearCache,
//               child: Text('Clear cache'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.navigationDelegate,
//               child: Text('Navigation Delegate example'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.doPostRequest,
//               child: Text('Post Request'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.loadHtmlString,
//               child: Text('Load HTML string'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.loadLocalFile,
//               child: Text('Load local file'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.loadFlutterAsset,
//               child: Text('Load Flutter Asset'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               key: ValueKey<String>('ShowTransparentBackgroundExample'),
//               value: MenuOptions.transparentBackground,
//               child: Text('Transparent background example'),
//             ),
//             const PopupMenuItem<MenuOptions>(
//               value: MenuOptions.setCookie,
//               child: Text('Set cookie'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

