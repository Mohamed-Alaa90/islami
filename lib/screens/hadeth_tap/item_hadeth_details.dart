import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemHadethDetails extends StatelessWidget {
  ItemHadethDetails({super.key, required this.content});

  String content;

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: GoogleFonts.almarai(
          textStyle: Theme.of(context).textTheme.titleSmall),
    );
  }
}
