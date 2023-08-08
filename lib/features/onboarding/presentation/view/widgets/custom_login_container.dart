import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginContainer extends StatelessWidget {
  const LoginContainer(
      {super.key, required this.imagePath, required this.text, this.onTap});
  final String imagePath, text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 96,
        height: 36,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SvgPicture.asset(imagePath),
            Text(text),
          ],
        ),
      ),
    );
  }
}
