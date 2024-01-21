import 'package:ecommerce_flutter/consts/colors.dart';
import 'package:ecommerce_flutter/consts/consts.dart';
import 'package:ecommerce_flutter/views/auth_screen/login_screen.dart';
import 'package:ecommerce_flutter/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  ChangeScreen() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    ChangeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(
                icSplashBg,
                width: 300,
              ),
            ),
            20.heightBox,
            ApplogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(),
            appversion.text.white.make(),
          ],
        ),
      ),
    );
  }
}
