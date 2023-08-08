import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utilits/custom_back_button.dart';

class ForgetPAssword extends StatelessWidget {
  const ForgetPAssword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SvgPicture.asset(
            'assets/images/Thinking face-cuate.svg',
            height: 300,
          ),
          const Text(
            'Relax ,Think well you, can remember..',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
         const  Align(
            child: CustomBackButton(),
          ),
        ],
      ),
    );
  }
}


