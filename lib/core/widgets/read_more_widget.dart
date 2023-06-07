import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../constants/constant.dart';

class ReadMoreWidget extends StatelessWidget {
  final String? text;
  final Color? color;

  const ReadMoreWidget({Key? key, this.text, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      text!,
      textAlign: TextAlign.justify,
      style: AppTheme.bodyText2.copyWith(color: color ?? ColorConstant.black900),
      colorClickableText: ColorConstant.primary,
      trimMode: TrimMode.Length,
      trimLines: 5,
      trimCollapsedText: 'المزيد',
      trimExpandedText: 'أقل',
      moreStyle: AppTheme.bodyText2.copyWith(color: ColorConstant.primary),
      lessStyle: AppTheme.bodyText2.copyWith(color: ColorConstant.primary),
    );
  }
}
