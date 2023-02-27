import 'package:flutter/material.dart';

import '../../../../core/presentation/styles/sizes.dart';
import '../../../../core/presentation/widgets/custom_text.dart';

class CarDetailsItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Widget child;
  const CarDetailsItem({
    super.key,
    required this.icon,
    required this.text,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    //Icons.no_crash_rounded
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 1)
          .copyWith(left: 0),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
      ),
      child: Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: Sizes.availableScreenWidth(context) * 0.35,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl,
              children: [
                Icon(
                  icon,
                  color: Colors.black,
                  size: 15,
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomText.f14(
                  context,
                  text,
                ),
              ],
            ),
          ),
          Container(width: 90, alignment: Alignment.center, child: child)
        ],
      ),
    );
  }
}
