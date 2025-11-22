import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int counter = 0;
  int index = 0;
  double angle = 0.0;
  List<String> do3aa = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا إله إلا الله",
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 30.0,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              changCounter();
            },
            child: Transform.rotate(
              angle: angle,
              child: Image.asset("assets/images/body_sebha_light.png"),
            ),
          ),
          Text(
            "عدد التسبيحات ",
            style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.titleLarge),
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              "$counter",
              style: GoogleFonts.amiri(
                textStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(color: Colors.white),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).primaryColor,
            ),
            child: Text(
              do3aa[index],
              style: GoogleFonts.amiri(
                  color: Colors.white,
                  textStyle: Theme.of(context).textTheme.titleLarge),
            ),
          )
        ],
      ),
    );
  }

  void changCounter() {
    angle += pi / 2;
    if (counter == 33) {
      counter = 0;
      if (index < do3aa.length - 1) {
        index++;
      } else {
        index = 0;
      }
    } else {
      setState(() {
        counter++;
      });
    }
  }
}
