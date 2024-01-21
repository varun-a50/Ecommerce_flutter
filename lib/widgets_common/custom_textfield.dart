import 'package:ecommerce_flutter/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomTextField({String? heading, String? hintheading, controller}) {
  return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
    heading!.text.fontFamily(semibold).size(16).color(redColor).make(),
    5.heightBox,
    TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintheading,
        hintStyle: const TextStyle(
          fontFamily: semibold,
          color: textfieldGrey,
        ),
        isDense: true,
        fillColor: lightGrey,
        filled: true,
        border: InputBorder.none,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: redColor),
        ),
      ),
    ),
    10.heightBox,
  ]);
}
