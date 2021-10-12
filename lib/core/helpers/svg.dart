import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppSvg extends StatelessWidget {
  const AppSvg(
    this.assetName, {
    Key? key,
    this.color,
    this.height = 20,
  }) : super(key: key);

  final String assetName;
  final Color? color;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      height: height,
      color: color,
    );
  }
}
