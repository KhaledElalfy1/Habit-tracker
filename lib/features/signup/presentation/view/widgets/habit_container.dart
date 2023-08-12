import 'package:flutter/material.dart';

class GenderContainer extends StatefulWidget {
  const GenderContainer(
      {super.key,
      required this.icon,
      required this.iconName,
      required this.isSelected});
  final String icon, iconName;
  final bool isSelected;

  @override
  State<GenderContainer> createState() => _GenderContainerState();
}

class _GenderContainerState extends State<GenderContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 160.5,
      height: 134,
      decoration: BoxDecoration(
        border: Border.all(
            color: widget.isSelected ? Colors.blue : Colors.transparent),
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
    );
  }
}
