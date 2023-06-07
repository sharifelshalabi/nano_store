import 'package:flutter/material.dart';

import '../constants/constant.dart';
import 'extensions.dart';

const double? iconSize = 15.0;

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  late Color color;
  final IconData icon;

   CustomButton({
    Key? key,
    this.onPressed,
    this.title = 'press',
    this.icon = AppIcons.circle,
  }) {this.color = ColorConstant.primary;}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      label: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
      icon: Icon(
        icon,
        color: Colors.indigoAccent.withOpacity(0.7), // TODO to edit
        size: iconSize,
      ),
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: color,
          minimumSize: const Size(150, 50),
          maximumSize: const Size(150, 50),
          shape:RoundedRectangleBorder()),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final IconData icon;
  final Color color;

  const CustomIconButton({
    Key? key,
    this.onPressed,
    this.icon = AppIcons.circle,
    this.color = Colors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
          icon: Icon(
            icon,
            color: ColorConstant.black900,
          ),
          onPressed: onPressed,
        ));
  }
}

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String title;
  late Color color;

   CustomTextButton({
    Key? key,
    this.onPressed,
    this.title = 'press',
  }) {this.color = ColorConstant.primary;}

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(150, 50),
        maximumSize: const Size(150, 50),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText2!.copyWith(
            color: color == ColorConstant.gray50
                ? Colors.indigoAccent
                : ColorConstant.whiteA700), // TODO to edit
      ),
    );
  }
}
