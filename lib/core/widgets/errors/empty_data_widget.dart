import 'package:flutter/material.dart';
import '../../constants/constant.dart';
import '../custom_image.dart';
import 'base_error_widget.dart';

class EmptyDataWidget extends StatelessWidget {
  final String? message;

  const EmptyDataWidget({Key? key, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseErrorWidget(
      onTap: () {},
      title: message ?? 'لا يوجد بيانات',
      subtitle: 'الرجاء المحاولة لاحقاً',
      icon: CustomImage.rectangle(
        height: 150,
        width: 150,
        image: AppAssets.appName,
        isNetworkImage: false,
      ),
    );
  }
}
