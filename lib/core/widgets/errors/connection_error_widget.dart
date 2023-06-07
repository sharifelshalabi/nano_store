import 'package:flutter/material.dart';

import 'base_error_widget.dart';

class ConnectionErrorWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final String? message;

  const ConnectionErrorWidget({Key? key, this.onTap, this.message})
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
