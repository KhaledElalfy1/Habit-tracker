import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  const GenderContainer(
      {super.key, required this.gender, required this.genderName});
  final String gender, genderName;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        width: 160.5,
        height: 134,
        decoration: BoxDecoration(
          border:
              Border.all(color: isSelected ? Colors.blue : Colors.transparent),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.gender,
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              widget.genderName,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
