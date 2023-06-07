import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Keys {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static final scaffoldKey = GlobalKey<ScaffoldState>();
}

class AppConstant {
  static const List requestColors = [
    Color(0x59cc38a1),
    Color(0x59386ccc),
    Color(0x5938cc44),
    Color(0x59cc3838),
    Color(0x59fffb1f),
  ];

  static const Map<String, Locale> languages = {
    'ar': Locale('ar'),
    'en': Locale('en'),
  };
  static Locale defaultLocal = Locale("en");
}

class AppScrollBehavior extends MaterialScrollBehavior {
  /// just to provide scroll to web and windows
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
