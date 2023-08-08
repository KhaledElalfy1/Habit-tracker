import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_back_button.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 135,
      color: Colors.white,
      child: Row(
        children: [
         const SizedBox(
            width: 16,
          ),
          const CustomBackButton(),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
