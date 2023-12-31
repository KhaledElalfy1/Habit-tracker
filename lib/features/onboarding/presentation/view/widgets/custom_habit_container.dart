import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class HabitContainer extends StatelessWidget {
  const HabitContainer(
      {super.key,
      required this.progressText,
      required this.columnText1,
      required this.columnText2,
      required this.icon,
      required this.progress,
      this.color = Colors.black});
  final String progressText, columnText1, columnText2;
  final IconData icon;
  final double progress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 61.04,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.02),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          CircularPercentIndicator(
            animation: true,
            animationDuration: 2000,
            radius: 20,
            lineWidth: 3.0,
            percent: progress,
            circularStrokeCap: CircularStrokeCap.round,
            center: Text(progressText),
            progressColor: const Color(0xff3941FF),
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 100,
            height: 33,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(columnText1),
                Text(
                  columnText2,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 120,
          ),
          Container(
            width: 31.54,
            height: 31.54,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(10.51),
            ),
            child: Icon(
              icon,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
