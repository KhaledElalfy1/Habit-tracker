import 'package:flutter/material.dart';
import 'package:habit_tracker/core/utilits/custom_appbar.dart';
import 'package:habit_tracker/features/signup/presentation/view/widgets/choose_habit_container.dart';

class SignUpViewThree extends StatefulWidget {
  const SignUpViewThree({
    super.key,
    required this.name,
    required this.surname,
    required this.email,
    required this.password,
    required this.date,
    required this.gender,
  });
  final String name, surname, email, password, date, gender;
  @override
  State<SignUpViewThree> createState() => _SignUpViewThreeState();
}

class _SignUpViewThreeState extends State<SignUpViewThree> {
  bool isSelected = false;
  
  List habits = [
    ['💧', 'drink water'],
    ['🏃‍♂️', 'run'],
    ['📖', 'read books'],
    ['🧘‍♀️', 'meditate'],
    ['💻', 'study'],
    ['📙', 'journal'],
    ['🌿', 'natural'],
    ['😴', 'sleep'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        const CustomAppBar(text: 'Create account'),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Choose your first habits',
            style: TextStyle(fontSize: 24),
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'You may add habit latter',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            itemCount: habits.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                child: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSelected = !isSelected;
                      });
                    },
                    child: ChooseHabitContainer(
                      icon: habits[index][0],
                      iconName: habits[index][1],
                    )),
              );
            },
          ),
        ),
      ]),
    );
  }
}
