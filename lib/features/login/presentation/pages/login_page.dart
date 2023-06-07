import 'dart:ui';
import 'package:blocer/blocer.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/core/constants/app_assets.dart';
import 'package:untitled1/core/constants/app_decoration.dart';
import 'package:untitled1/core/utils/navigation.dart';
import 'package:untitled1/features/login/domain/auth_bloc.dart';
import 'package:untitled1/features/login/presentation/widgets/rounded_button.dart';
import 'package:untitled1/features/products/presentation/pages/products_details.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_styles.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../core/widgets/custom_image_view.dart';
import '../widgets/textfield_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class LoginPage extends StatelessWidget {
  TextEditingController email = TextEditingController(text: "mor_2314");
  TextEditingController password = TextEditingController(text: "83r5^_");
  // final LoginService loginService = LoginService();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Container(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 26),
                    decoration: AppDecoration.gradient,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          svgPath: AppAssets.appName,
                          height: getVerticalSize(
                              MediaQuery.of(context).size.height * 0.23),
                          width: getHorizontalSize(
                              MediaQuery.of(context).size.width * 0.6),
                          alignment: Alignment.center,
                          margin: getMargin(
                            top: 48,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 104,
                          ),
                          child: Text(
                            "Log In",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtSFProDisplayBold34,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: getMargin(
                    left: 36,
                    top: 32,
                    right: 36,
                  ),
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        hintText: 'mor_2314',
                        textEditingController: email,
                        suffixIcon: Icons.check_circle,
                        suffixIconColor: Colors.green,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      const SizedBox(height: 10),
                      CustomTextField(
                        hintText: "83r5^_",
                        textEditingController: password,
                        isPasswordToggle: true,
                        obscureText: true,
                        suffixIcon: Icons.visibility,
                      ),
                      const SizedBox(height: 20),
                    Blocer<AuthCubit,dynamic>.post(
                      onSuccess: (model){

                        Navigation.push(context, ProductListPage());
                      },
                      child: RoundedButton(
                        onTap: () {
                          print('ssss');

                          context.read<AuthCubit>().login(
                              userName: email.text,
                              password: password.text);


                        },
                        color: ColorConstant.primary,
                        text: 'Continue',
                        textColor: ColorConstant.whiteA700,
                      ),
                    ),
                      const SizedBox(height: 20),
                      const Center(
                        child: Text(
                          'Need help?',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
