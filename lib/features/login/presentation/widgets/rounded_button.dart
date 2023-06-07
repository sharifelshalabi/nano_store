import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/app_colors.dart';

class RoundedButton extends StatelessWidget {
  final Color color;
  final String text;
  final Color textColor;
  final VoidCallback onTap;

   RoundedButton({
    Key? key,
    required this.color,
    required this.text,
     required this.onTap,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
        onPressed:onTap,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        child: Text(
          text  ,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.normal,

            color: ColorConstant.whiteA700,
          ),
        ),
      ),
    );
  }
}