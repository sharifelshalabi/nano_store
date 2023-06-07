import 'package:flutter/material.dart';

class Validator {
  static String? emailValidator(String value, context) {
    if (value.isEmpty) return "ضروري";
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "أدخل بريداً صالحاً";
    } else {
      return null;
    }
  }

  static String? phoneNumberValidator(String value, context) {
    Pattern pattern = r'(\d{10})';
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "أدخل رقم صالح";
    } else {
      return null;
    }
  }


  static String? ageValidator(String value, context) {
    if (value.isEmpty) return "required";
    if (num.tryParse(value) == null) return "enter_valid_val";
    if (int.parse(value) >= 150 || int.parse(value) <= 1) {
      return 'Enter a Valid Age between 1 and 150';
    } else {
      return null;
    }
  }

  static String? hwValidator(String value, context) {
    if (num.tryParse(value) == null) return "enter_valid_val";
    if (int.parse(value) >= 350 || int.parse(value) <= 1) {
      return 'Enter a Valid Value between 1 and 350';
    } else {
      return null;
    }
  }

  static String? nameValidate(String value, context) {
    if (value.length < 2) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "ضروري";
    } else {
      return null;
    }
  }

  static bool validatePassword(String pass) {
    RegExp passValid = RegExp(r"(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W)");
    String password = pass.trim();
    if (passValid.hasMatch(password)) {
      return true;
    } else {
      return false;
    }
  }

  static String? passwordValidate(String value, context) {
//    if (value.isEmpty) {
//      return "required".tr();
//    } else {
//      if (!validatePassword(value)) {
//      return "validate_password_msg".tr();
//      } else {
//        return null;
//      }
//    }
    if (value.length < 8) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "يجب أن تحتوي كلمة المرور على حرف كبير وحرف صغير وأرقام وعلامات ترقيم";
    } else {
      return null;
    }
  }

  static String? confirmPasswordValidate(String value, String value2, context) {
    if (value != value2) {
      return "كلمة المرور غير متطابقة";
    } else {
      return null;
    }
  }

  static String? pinCodeValidate(String value, context) {
    if (value.length < 5) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "ضروري";
    }
    Pattern pattern = r"\d{5}";
    RegExp regex = RegExp(pattern as String);
    if (!regex.hasMatch(value)) {
      return "أدخل رقم كود صالح";
    } else {
      return null;
    }
  }

  static String? requestDescriptionValidate(String value, context) {
    if (value.length < 20) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "حجم النص قصير جداً، يجب أن يكون أكثر من 20 محرف";
    }
    if (value.length > 400) {
      FocusManager.instance.primaryFocus!.unfocus();
      FocusManager.instance.primaryFocus!.requestFocus();
      return "حجم النص طويل جداً، يجب أن يكون أقل من 400 محرف";
    } else {
      return null;
    }
  }
}
