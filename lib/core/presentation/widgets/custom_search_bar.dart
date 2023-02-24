import 'package:flutter/material.dart';

import '../styles/sizes.dart';
import 'custom_text_form_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(15),
        height: 45,
        width: double.infinity,
        decoration: const BoxDecoration(
            border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                ),
                top: BorderSide(
                  color: Colors.grey,
                ),
                right: BorderSide(
                  color: Colors.grey,
                ),
                left: BorderSide(
                  color: Colors.grey,
                )),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: CustomTextFormField(
          hintText: "ابحث عن سيارتك",
          suffix: Icon(
            Icons.search,
            size: Sizes.icon24,
            color: Colors.black.withOpacity(0.6),
          ),
          contentPadding: const EdgeInsets.all(10),
        ));
  }
}
