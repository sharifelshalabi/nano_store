import 'package:flutter/material.dart';

import '../constants/constant.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double width;
  final double? height;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  CustomContainer(
      {Key? key,
      this.height,
      this.padding = const EdgeInsets.all(8),
      this.margin,
      required this.child,
      this.width = double.infinity,
      })
      : super(key: key) {
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      margin: margin,
      height: height,
      width: width,
      child: child,
    );
  }
}
