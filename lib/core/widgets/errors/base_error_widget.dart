import 'package:flutter/material.dart';

import '../../constants/constant.dart';

class BaseErrorWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? title;
  final String? subtitle;
  final Widget? icon;

  const BaseErrorWidget(
      {Key? key, this.onTap, this.title, this.subtitle, this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8),
              child: icon,
            ),
            Text(title ?? '-',
                textAlign: TextAlign.center,
                style: AppTheme.headline6
                    .copyWith(color: ColorConstant.primary)),
            Text(
              subtitle ?? 'اضغط للمحاولة',
              style: AppTheme.button,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
