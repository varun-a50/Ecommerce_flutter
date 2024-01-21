import 'package:ecommerce_flutter/consts/consts.dart';

Widget commonButton({onPress, color, textColor, String? title}) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: color,
      padding: const EdgeInsets.all(12),
      shape: const RoundedRectangleBorder(),
    ),
    onPressed: onPress,
    child: title!.text.color(textColor).fontFamily(bold).make(),
  );
}
