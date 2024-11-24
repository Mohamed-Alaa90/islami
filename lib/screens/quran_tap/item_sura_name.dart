import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/quran_tap/quran_tap.dart';

class ItemSuraName extends StatelessWidget {
  final SuraData data;

  const ItemSuraName({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(

      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                data.suraNumber,
                style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.titleMedium),
              ),
            ),
            // SizedBox(
            //   height:30,
            //   child: VerticalDivider(
            //     color: Theme.of(context).primaryColor,
            //     thickness: 2,
            //   ),
            // ),
            Expanded(
              child: Text(
                textAlign: TextAlign.center,
                data.suraName,
                style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.titleMedium),
              ),
            ),
          ],
        ),
        const Divider(
          endIndent: 30,
          indent: 30,
        ),
      ],
    );
  }
}
