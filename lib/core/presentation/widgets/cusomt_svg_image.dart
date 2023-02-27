import 'package:flutter/material.dart';
import 'package:flutter_svg_image/flutter_svg_image.dart';

class CustomSvgImage extends StatelessWidget {
  final String path;
  final double height;
  final double? width;
  const CustomSvgImage(
      {Key? key, required this.path, required this.height, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(
      height: height,
      width: width,
      fit: BoxFit.contain,
      image: SvgImage.asset(
        path,
      ),
    );
  }
}
