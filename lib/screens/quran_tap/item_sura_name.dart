import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/quran_tap/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  const ItemSuraName({super.key, required this.name, required this.index});

  final String name;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          SuraDetailsScreen.routeName,
          arguments: SuraDetailsArgs(name: name, index: index),
        );
      },
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: GoogleFonts.amiri(
            textStyle: Theme.of(context).textTheme.titleSmall),
      ),
    );
  }
}
