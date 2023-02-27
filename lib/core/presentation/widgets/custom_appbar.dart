import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../styles/app_images.dart';
import '../styles/sizes.dart';
import 'cusomt_svg_image.dart';

class CustomAppBar extends StatelessWidget
    implements PreferredSizeWidget, ObstructingPreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Badge(
            backgroundColor: Colors.red,
            label: Text('1'),
            child: CustomSvgImage(
              path: AppImages.appBarIcon1,
              height: 25,
            ),
          ),
          CustomSvgImage(
            path: AppImages.appBarIcon2,
            height: 15,
            width: 10,
          )
        ],
      ),
      systemOverlayStyle:
          const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(Sizes.appBarButtonR32);

  @override
  bool shouldFullyObstruct(BuildContext context) {
    return true;
  }
}
