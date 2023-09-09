import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final String pathIcon;
  final double iconSize;
  final bool isAction;

  const CustomIconButton({
    Key? key,
    required this.pathIcon,
    this.iconSize = 40,
     this.isAction = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: isAction ? 10 : 0),
      child: Image.asset(pathIcon, width: iconSize),
    );
  }
}
