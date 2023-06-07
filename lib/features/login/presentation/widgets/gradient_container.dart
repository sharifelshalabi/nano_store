import 'package:flutter/material.dart';

import 'custom_text_widget.dart';

class GradientContainer extends StatelessWidget {
   GradientContainer({super.key, this.widget});
  Widget? widget;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      top: 0,
      bottom: MediaQuery.of(context).size.height * 0.55,
      width: MediaQuery.of(context).size.width,
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Color(0xFF188095),
              Color(0xFF2AB3C6),
            ],
          ),
        ),
        alignment: Alignment.bottomLeft,
        padding: EdgeInsets.only(left: 20, bottom: 20),
        child: widget,
      ),
    );
  }
}
