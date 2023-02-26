import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomContainer extends StatelessWidget {
  final String image, text, num;
  final bool isHome;
  const CustomContainer(
      {super.key,
      required this.image,
      required this.text,
      required this.num,
      required this.isHome});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: isHome == true
          ? const EdgeInsets.only(right: 1)
          : const EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.symmetric(
          horizontal: isHome == true ? 8 : 15, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            image,
            height: isHome == true ? 10 : 22,
            width: isHome == true ? 10 : 20,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: isHome == true ? 10 : 15),
          ),
          Text(
            num,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isHome == true ? 12 : 15),
          ),
        ],
      ),
    );
  }
}
