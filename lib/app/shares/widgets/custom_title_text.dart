import 'package:connection/app/shares/widgets/custom_icon.dart';
import 'package:connection/app/shares/widgets/custom_text.dart';
import 'package:connection/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTitleText extends StatelessWidget {
  final String title;
  final Function()? onPressed;

  const CustomTitleText({Key? key, required this.title, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8, left: 8, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 5),
                color: ThemeConfig.primaryColor,
                height: 20,
                width: 5,
              ),
              CustomText(text: title, fontSize: 18, fontWeight: FontWeight.bold),
            ],
          ),
          const Row(
            children: [
              CustomText(text: 'ดูเพิ่มเติม', fontSize: 12),
              CustomIcon(iconData: Icons.arrow_forward_ios_outlined, size: 12),
            ],
          ),
        ],
      ),
    );
  }
}
