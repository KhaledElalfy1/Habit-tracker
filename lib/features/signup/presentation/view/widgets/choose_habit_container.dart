import 'package:flutter/material.dart';

class ChooseHabitContainer extends StatefulWidget {
  const ChooseHabitContainer({
    super.key,
    required this.icon,
    required this.iconName,
  });
  final String icon, iconName;

  @override
  State<ChooseHabitContainer> createState() => _ChooseHabitContainerState();
}

class _ChooseHabitContainerState extends State<ChooseHabitContainer> {
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
          border: Border.all(
            color: isSelected ? Colors.blue : Colors.transparent,
          ),
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              widget.icon,
              style: const TextStyle(fontSize: 40),
            ),
            Text(
              widget.iconName,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
