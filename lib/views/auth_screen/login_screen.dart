import 'package:ecommerce_flutter/consts/consts.dart';
import 'package:ecommerce_flutter/consts/list.dart';
import 'package:ecommerce_flutter/views/auth_screen/signup.dart';
import 'package:ecommerce_flutter/widgets_common/applogo_widget.dart';
import 'package:ecommerce_flutter/widgets_common/bg_widget.dart';
import 'package:ecommerce_flutter/widgets_common/common_button.dart';
import 'package:ecommerce_flutter/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              (context.height * 0.1).heightBox,
              ApplogoWidget(),
              10.heightBox,
              "Log in to $appname".text.fontFamily(bold).size(18).white.make(),
              15.heightBox,
              Column(
                children: [
                  CustomTextField(heading: email, hintheading: hintEmail),
                  CustomTextField(heading: password, hintheading: passwordHint),
                  Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                          onPressed: () {}, child: forgetpass.text.make())),
                  5.heightBox,
                  commonButton(
                          color: redColor,
                          textColor: whiteColor,
                          title: login,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  createanewaccount.text.color(fontGrey).make(),
                  5.heightBox,
                  commonButton(
                      color: lightgolden,
                      textColor: redColor,
                      title: signup,
                      onPress: () {
                        Get.to(() => SignupScreen());
                      }).box.width(context.screenWidth - 50).make(),
                  5.heightBox,
                  loginwith.text.color(fontGrey).make(),
                  5.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundColor: lightGrey,
                                radius: 25,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            )),
                  )
                ],
              )
                  .box
                  .white
                  .rounded
                  .padding(const EdgeInsets.all(16))
                  .width(context.width - 70)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    ));
  }
}
