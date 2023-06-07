import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import '../constants/constant.dart';

class CustomEasyLoading {
  static void configLoading() {
    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..loadingStyle = EasyLoadingStyle.dark
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..progressColor = ColorConstant.whiteA700
      ..backgroundColor = ColorConstant.primary
      ..indicatorColor = ColorConstant.whiteA700
      ..textColor = ColorConstant.whiteA700
      ..maskColor = ColorConstant.primary.withOpacity(0.5)
      ..userInteractions = false
      ..dismissOnTap = false
      ..maskType = EasyLoadingMaskType.black
      ..animationStyle = EasyLoadingAnimationStyle.opacity
      ..indicatorType = EasyLoadingIndicatorType.fadingCircle
      ..toastPosition = EasyLoadingToastPosition.center
      ..customAnimation = CustomAnimation();
  }
}

class CustomAnimation extends EasyLoadingAnimation {
  CustomAnimation();

  Widget buildWidget(
    Widget child,
    AnimationController controller,
    AlignmentGeometry alignment,
  ) {
    return Opacity(
      opacity: controller.value,
      child: RotationTransition(
        turns: controller,
        child: child,
      ),
    );
  }
}
