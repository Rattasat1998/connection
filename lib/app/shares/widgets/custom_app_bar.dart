import 'package:connection/app/shares/widgets/custom_icon_button.dart';
import 'package:connection/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../data/provider/connection_image.dart';
import 'custom_icon.dart';
import 'custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ThemeConfig.darkSecondaryHeaderColor,
      elevation: 1,
      title: Row(
        children: [
           const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomIconButton(pathIcon: ConnectionImage.iconPlace, iconSize: 16),
                CustomText(text: 'ตำแหน่ง',color: Colors.white),

              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 45,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(9)
              ),
              child:  const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomIcon(iconData: Icons.search,size: 30,color: ThemeConfig.iconSearch),
                    SizedBox(width: 10),
                    CustomText(text: 'ค้นหาสิ่งที่คุณสนใจ',color: ThemeConfig.textColor01,fontSize: 18),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      actions: const [
        CustomIconButton(pathIcon: ConnectionImage.iconChat,isAction: true,),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(0, 50);
}
