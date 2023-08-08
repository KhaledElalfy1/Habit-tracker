import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  CustomTextFormFiled(
      {super.key,
      required this.hitText,
      this.obscureText = false,
      this.onChanged});
  final TextEditingController _textEditingController = TextEditingController();
  final String hitText;
  final bool obscureText;
  final void Function(String)? onChanged;
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
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
