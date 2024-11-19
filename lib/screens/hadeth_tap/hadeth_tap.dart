import 'package:flutter/material.dart';

class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Image.asset('assets/images/hadeth_logo.png')),
        Container(
          color: Colors.red,
          child: const Card(),
        )
      ],
    );
  }
}
