import 'package:flutter/material.dart';

import '../../../../core/presentation/widgets/custom_text.dart';

class CustomTab extends StatelessWidget {
 final String text;
  const CustomTab({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 30),
      decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: const BorderRadius.all(Radius.circular(20))),
      child: CustomText.f14(
        context,
        text,
        color: Colors.white,
      ),
    );
  }
}
