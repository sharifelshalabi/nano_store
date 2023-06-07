import 'package:flutter/material.dart';

import 'base_error_widget.dart';

class NotFoundErrorWidget extends StatelessWidget {
  final GestureTapCallback onTap;
  final String message;

  const NotFoundErrorWidget(
      {Key? key, required this.onTap, required this.message})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseErrorWidget(
        onTap: onTap,
        title: message,
        subtitle: 'اضغط للمحاولة',
        icon: const Text('Must be Image'));
  }
}
