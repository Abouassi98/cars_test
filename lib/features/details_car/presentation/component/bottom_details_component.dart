import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/presentation/styles/app_images.dart';
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
          CircleAvatar(
            backgroundColor: Colors.greenAccent,
            child: SvgPicture.asset(
              AppImages.carContainerIcon7,
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
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.3,
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
                SvgPicture.asset(
                  AppImages.carContainerIcon8,
                  height: 20,
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.3,
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
                SvgPicture.asset(
                  AppImages.carContainerIcon9,
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
