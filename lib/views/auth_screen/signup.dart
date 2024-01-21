import 'package:ecommerce_flutter/consts/consts.dart';
import 'package:ecommerce_flutter/consts/list.dart';
import 'package:ecommerce_flutter/views/auth_screen/login_screen.dart';
import 'package:ecommerce_flutter/widgets_common/applogo_widget.dart';
import 'package:ecommerce_flutter/widgets_common/bg_widget.dart';
import 'package:ecommerce_flutter/widgets_common/common_button.dart';
import 'package:ecommerce_flutter/widgets_common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              "Signup to $appname".text.fontFamily(bold).size(18).white.make(),
              15.heightBox,
              Column(
                children: [
                  CustomTextField(heading: name, hintheading: namehint),
                  CustomTextField(heading: email, hintheading: hintEmail),
                  CustomTextField(heading: password, hintheading: passwordHint),
                  CustomTextField(
                      heading: retypePass, hintheading: passwordHint),
                  5.heightBox,
                  Row(
                    children: [
                      Checkbox(
                          checkColor: redColor,
                          value: false,
                          onChanged: (newValue) {}),
                      10.widthBox,
                      Expanded(
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: 'I agree to the ',
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: Termsandconditions,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              )),
                          TextSpan(
                              text: ' & ',
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: privacyPolicy,
                              style: TextStyle(
                                fontFamily: bold,
                                color: redColor,
                              ))
                        ])),
                      )
                    ],
                  ),
                  commonButton(
                          color: redColor,
                          textColor: whiteColor,
                          title: signup,
                          onPress: () {})
                      .box
                      .width(context.screenWidth - 50)
                      .make(),
                  5.heightBox,
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: RichText(
                        text: const TextSpan(children: [
                      TextSpan(
                          text: alreadyhaveanaccount,
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: login,
                          style: TextStyle(
                            fontFamily: bold,
                            color: redColor,
                          )),
                    ])),
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
