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
      margin:  EdgeInsets.symmetric(horizontal: isHome == true ?1:8),
      padding: EdgeInsets.symmetric(
          horizontal: isHome == true ? 5 : 15, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            image,
            height: isHome == true ? 15 : 22,
            width: isHome == true ? 10 : 20,
          ),
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.2,
                fontSize: isHome == true ? 12 : 15),
          ),
          Text(
            num,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                height: 1,
                fontSize: isHome == true ? 12 : 15),
          ),
        ],
      ),
    );
  }
}
