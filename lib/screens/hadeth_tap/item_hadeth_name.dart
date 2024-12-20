import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemHadethName extends StatelessWidget {
  const ItemHadethName({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style:
          GoogleFonts.amiri(textStyle: Theme.of(context).textTheme.titleMedium),
    );
  }
}
