import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled1/features/login/domain/auth_bloc.dart';
import 'package:untitled1/features/products/domain/product_bloc.dart';
import 'package:untitled1/features/products/presentation/widgets/product_item.dart';
import 'core/constants/constant.dart';
import 'core/utils/custom_easy_loading.dart';
import 'dart:async';
import 'features/login/presentation/pages/login_page.dart';
import 'features/products/presentation/pages/products_details.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: ColorConstant.gray400,
  ));
  WidgetsFlutterBinding.ensureInitialized();

  DartPluginRegistrant.ensureInitialized();
  CustomEasyLoading.configLoading();
  runApp(const MyApp());
}

Future initialization() async {
  await Future.delayed(const Duration(seconds: 3));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(),
        ),
        BlocProvider<ProductsCubit>(
          create: (BuildContext context) => ProductsCubit(),
        ),
      ],
      child: MaterialApp(
        title: AppSettings.appName,
        navigatorKey: Keys.navigatorKey,
        builder: EasyLoading.init(),
        scrollBehavior: AppScrollBehavior(),
        debugShowCheckedModeBanner: AppSettings.isDebug,
        theme: AppTheme.appTheme,
        home: LoginPage(),
      ),
    );
  }
}
