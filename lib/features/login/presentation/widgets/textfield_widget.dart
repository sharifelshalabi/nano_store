import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final bool obscureText;
  final IconData suffixIcon;
  final Color suffixIconColor;
  final bool isPasswordToggle;
  final TextEditingController textEditingController;
  final String hintText;
  const CustomTextField({
    Key? key,
    this.obscureText = false,
    required this.hintText,
    required this.textEditingController,
    required this.suffixIcon,
    this.suffixIconColor = Colors.black,
    this.isPasswordToggle = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          visualDensity: VisualDensity.comfortable,
        ),
        child: TextField(

          controller: widget.textEditingController,
          obscureText: widget.obscureText && !isPasswordVisible,
          cursorHeight: 24.0,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
          decoration: InputDecoration(
            hintText: widget.hintText,
            focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: ColorConstant.primary),
            ),
            suffixIcon: widget.isPasswordToggle
                ? IconButton(
                    icon: isPasswordVisible
                        ? Icon(Icons.visibility, color: widget.suffixIconColor)
                        : Icon(Icons.visibility_off,
                            color: widget.suffixIconColor),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  )
                : Icon(widget.suffixIcon, color: widget.suffixIconColor),
            // Adjust the padding here
            isDense: true, // Reduce the height of the TextField
          ),
        ));
  }
}
