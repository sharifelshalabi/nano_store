import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final Color color;
  late Color closeColor;

  CustomAppBar({
    Key? key,
    required this.title,
    required this.color,
    this.titleColor = Colors.white,

  }) : preferredSize = const Size.fromHeight(kToolbarHeight)
  {this.closeColor = ColorConstant.whiteA700;}

  @override
  final Size preferredSize;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: color,
          elevation: 0.4,
          title: Text(
            title,
            style: TextStyle(color: titleColor, fontSize: 18),
          ),
        ),
      ),
    );
  }
}