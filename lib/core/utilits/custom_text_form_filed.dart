import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled(
      {super.key,
      required this.hitText,
      this.obscureText = false,
      this.onChanged,
      this.onTap,
       required this.textEditingController,  this.readOnly=false});
  final TextEditingController textEditingController;
  final String hitText;
  final bool obscureText;
  final void Function(String)? onChanged;
  final void Function()? onTap;
  final bool readOnly;
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
      readOnly:readOnly ,
      onTap: onTap,
      onChanged: onChanged,
      controller: textEditingController,
      obscureText: obscureText,
      decoration: InputDecoration(
        suffix: IconButton(
          onPressed: () {
            textEditingController.clear();
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
        errorBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}
