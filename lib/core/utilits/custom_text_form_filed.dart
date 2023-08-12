import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled(
      {super.key,
      required this.hitText,
      this.obscureText = false,
      this.onChanged,
      this.onTap,
      this.hintStyle});
  final TextEditingController _textEditingController = TextEditingController();
  final String hitText;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final TextStyle? hintStyle;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'this filed is required';
        } else {
          return null;
        }
      },
      onTap: onTap,
      onChanged: onChanged,
      controller: _textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffix: IconButton(
          onPressed: () {
            _textEditingController.clear();
          },
          icon: const Icon(
            Icons.cancel,
          ),
        ),
        hintText: hitText,
        hintStyle: hintStyle,
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
