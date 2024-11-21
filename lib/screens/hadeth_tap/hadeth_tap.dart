import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/widgets/custom_card.dart';

class HadethTap extends StatelessWidget {
  const HadethTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/hadeth_logo.png'),
        ),
        CustomCard(
          borderRadius: BorderRadius.circular(20),
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          elevation: 6,
          width: double.infinity,
          color: Colors.white54,
          border: Border.all(color: Theme.of(context).primaryColor, width: 3),
          child: Text(
            "الأحاديث",
            textAlign: TextAlign.center,
            style: GoogleFonts.amiri(
              textStyle: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
      ],
    );
  }
}
