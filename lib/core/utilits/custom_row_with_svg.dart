import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgRow extends StatelessWidget {
  const SvgRow({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(imagePath),
      ],
    );
  }
}
