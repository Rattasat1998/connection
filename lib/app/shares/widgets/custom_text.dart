import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final int maxLine;

  const CustomText({super.key,
    required this.text,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign = TextAlign.center,
    this.maxLine = 1,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: context.textTheme.bodyLarge!.copyWith(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      textAlign: textAlign,
    );
  }
}

