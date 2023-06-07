import 'package:flutter/material.dart';
import '../utils/size_utils.dart';
import 'app_colors.dart';

class AppDecoration {
  static BoxDecoration get gradient => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(
        0,
        0.5,
      ),
      end: Alignment(
        1,
        0.5,
      ),
      colors: [
        ColorConstant.cyan800,
        ColorConstant.cyan400,
      ],
    ),
  );
  static BoxDecoration get outlineBlack9003f => BoxDecoration(
    color: ColorConstant.gray50,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.black9003f,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
    color: ColorConstant.blueGray100,
  );
  static BoxDecoration get outlineBlack9003f1 => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.black9003f,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          4,
        ),
      ),
    ],
  );
  static BoxDecoration get outlineBluegray5005e => BoxDecoration(
    color: ColorConstant.whiteA700C1,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.blueGray5005e,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get gradientBlack90000Black9007e => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(
        0,
        0,
      ),
      end: Alignment(
        0,
        1,
      ),
      colors: [
        ColorConstant.black90000,
        ColorConstant.black9007e,
      ],
    ),
  );
  static BoxDecoration get outlineBluegray5005e1 => BoxDecoration(
    color: ColorConstant.whiteA700,
    boxShadow: [
      BoxShadow(
        color: ColorConstant.blueGray5005e,
        spreadRadius: getHorizontalSize(
          2,
        ),
        blurRadius: getHorizontalSize(
          2,
        ),
        offset: Offset(
          0,
          0,
        ),
      ),
    ],
  );
  static BoxDecoration get gradientBlack90000Black9004d => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(
        0,
        0,
      ),
      end: Alignment(
        0,
        1,
      ),
      colors: [
        ColorConstant.black90000,
        ColorConstant.black9004d,
      ],
    ),
  );
  static BoxDecoration get outlineGray500 => BoxDecoration(
    color: ColorConstant.blueGray100,
    border: Border.all(
      color: ColorConstant.gray500,
      width: getHorizontalSize(
        1,
      ),
    ),
  );
  static BoxDecoration get gradientBlack90000Black90099 => BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment(
        1,
        1,
      ),
      end: Alignment(
        1,
        0,
      ),
      colors: [
        ColorConstant.black90000,
        ColorConstant.black90099,
      ],
    ),
  );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
    color: ColorConstant.whiteA700,
  );
  static BoxDecoration get fillBluegray50 => BoxDecoration(
    color: ColorConstant.blueGray50,
  );
}

class BorderRadiusStyle {
  static BorderRadius customBorderTL35 = BorderRadius.only(
    topLeft: Radius.circular(
      getHorizontalSize(
        35,
      ),
    ),
    topRight: Radius.circular(
      getHorizontalSize(
        35,
      ),
    ),
  );

  static BorderRadius roundedBorder10 = BorderRadius.circular(
    getHorizontalSize(
      10,
    ),
  );
}


StrokeAlign get strokeAlignInside => StrokeAlign.inside;

StrokeAlign get strokeAlignCenter => StrokeAlign.center;

StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
