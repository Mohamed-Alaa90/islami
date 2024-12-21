import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider/mode_provider.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ModeProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/radio_head.png"),
        const SizedBox(
          height: 40,
        ),
        Text(
          "اذاعه القران الكريم",
          style: GoogleFonts.amiri(
              textStyle: Theme.of(context).textTheme.titleMedium),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          textDirection: TextDirection.ltr,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {},
              child: Image.asset("assets/images/ic_back.png"),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset("assets/images/Icon_awesome-play.png"),
            ),
            InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/ic_next.png",
              ),
            ),
          ],
        )
      ],
    );
  }
}
