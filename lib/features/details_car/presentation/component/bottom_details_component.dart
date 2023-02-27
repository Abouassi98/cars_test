import 'package:flutter/material.dart';

import '../../../../core/presentation/styles/app_images.dart';
import '../../../../core/presentation/styles/sizes.dart';
import '../../../../core/presentation/widgets/cusomt_svg_image.dart';
import '../../../../core/presentation/widgets/custom_text.dart';

class BottomDetailsComponent extends StatelessWidget {
  const BottomDetailsComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.rtl,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: CustomSvgImage(
              path: AppImages.callIcon7,
              height: 20,
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.deepPurple[50],
            child: const Icon(
              Icons.chat_bubble_outline_outlined,
            ),
          ),
          Container(
            height: Sizes.availableScreenHeight(context) * 0.04,
            width: Sizes.availableScreenWidth(context) * 0.3,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.all(Radius.circular(20))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText.f14(
                  context,
                  'موقع السياره',
                  color: Colors.white,
                ),
                const CustomSvgImage(
                  path: AppImages.locationIcon8,
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: Sizes.availableScreenWidth(context) * 0.3,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[800]!,
                width: 1,
              ),
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText.f14(
                  context,
                  'احجز السياره',
                ),
                const CustomSvgImage(
                  path: AppImages.bookIcon9,
                  height: 20,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
