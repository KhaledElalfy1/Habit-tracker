import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ChallengeContainer extends StatelessWidget {
  const ChallengeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 64.47,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.02),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              children: [
                Column(
                  children: [Icon(Icons.schedule)],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Best Runner 🏃‍♂️',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '5 days 13 hours left',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          width: 70,
                        ),
                        Text(
                          '2 friendes joined',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            LinearPercentIndicator(
                animation: true,
                animationDuration: 2000,
                barRadius: const Radius.circular(16),
                width: 320,
                lineHeight: 6,
                percent: .25,
                backgroundColor: Colors.grey,
                progressColor: const Color(0xff3941FF))
          ],
        ),
      ),
    );
  }
}
