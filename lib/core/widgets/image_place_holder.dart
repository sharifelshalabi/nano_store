import 'package:flutter/material.dart';

import '../constants/app_assets.dart';

class ImagePlaceHolder extends StatelessWidget {
  const ImagePlaceHolder({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppAssets.appName,
      fit: BoxFit.cover,
    );
  }
}
