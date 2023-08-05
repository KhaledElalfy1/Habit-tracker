import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChatPopUp extends StatelessWidget {
  const ChatPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 140,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 8,
                  ),
                  SvgPicture.asset('assets/images/Icon.svg'),
                  const SizedBox(
                    width: 16,
                  ),
                  SvgPicture.asset('assets/images/chat lines.svg'),
                ],
              ),
            );
  }
}