import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_tap/hadeth_tap.dart';
import 'package:islami/screens/quran_tap/quran_tap.dart';
import 'package:islami/screens/radio_tap/radio_tap.dart';
import 'package:islami/screens/sebha_tap/sebha_tap.dart';
import 'package:islami/screens/setting_tap/setting_tap.dart';
import 'package:islami/thems.dart';

class Home extends StatefulWidget {
  static const String routeName = 'Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  List<Widget> taps = [
    QuranTap(),
     HadethTap(),
     SebhaTap(),
     RadioTap(),
     SettingTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/default_bg.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: MyTheme.lightTheme.textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            animationCurve: Curves.ease,
            backgroundColor: Colors.transparent,
            color: MyTheme.lightColor,
            height: 60,
            animationDuration: const Duration(milliseconds: 450),
            onTap: (index) {
              setState(() {
                selectedIndex = index;
              });
            },
            items: const [
              Image(
                image: AssetImage('assets/images/quran_icn.png'),

              ),
              Image(
                image: AssetImage('assets/images/hadeth_icn.png'),
              ),
              Image(
                image: AssetImage('assets/images/sebha_icn.png'),
              ),
              Image(
                image: AssetImage('assets/images/radio_icn.png'),
              ),
              Icon(Icons.settings, size: 30, color: Colors.white),
              // Settings Icon
            ],
          ),
          body: taps[selectedIndex],
        ),
      ),
    );
  }
}
