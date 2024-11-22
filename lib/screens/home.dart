import 'package:flutter/material.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:flutter_islamic_icons/flutter_islamic_icons.dart';
import 'package:google_fonts/google_fonts.dart';
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
  int _selectedIndex = 2;

  final List<Widget> taps = [
    RadioTap(),
    SebhaTap(),
    QuranTap(),
    HadethTap(),
    SettingTap(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/bg_dark.png"),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: GoogleFonts.amiri(
                fontSize: 35,
                textStyle: MyTheme.lightTheme.textTheme.titleLarge,
              ),
            ),
          ),
          bottomNavigationBar: CircleNavBar(
            activeIcons: const [
              Icon(
                FlutterIslamicIcons.tasbih2,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                FlutterIslamicIcons.quran,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                FlutterIslamicIcons.quran2,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                FlutterIslamicIcons.allah,
                color: Colors.black,
                size: 25,
              ),
              Icon(
                Icons.settings,
                size: 25,
                color: Colors.black,
              ),
            ],
            inactiveIcons: const [
              Icon(
                FlutterIslamicIcons.tasbih2,
                color: Colors.white,
                size: 20,
              ),
              Icon(
                FlutterIslamicIcons.quran,
                color: Colors.white,
                size: 20,
              ),
              Icon(
                FlutterIslamicIcons.quran2,
                color: Colors.white,
                size: 20,
              ),
              Icon(
                FlutterIslamicIcons.allah,
                color: Colors.white,
                size: 20,
              ),
              Icon(
                Icons.settings,
                size: 20,
                color: Colors.white,
              ),
            ],
            levels: const [
              'السبحه',
              'الحديث',
              'القران',
              'الراديو',
              'الاعدادات',
            ],
            activeLevelsStyle: GoogleFonts.amiri(fontSize: 16),
            inactiveLevelsStyle:
                GoogleFonts.amiri(fontSize: 16, color: Colors.white),
            color: MyTheme.darkColor,
            height: 60,
            circleWidth: 40,
            activeIndex: _selectedIndex,
            onTap: (value) {
              setState(() {
                _selectedIndex = value;
              });
            },
            iconCurve: Curves.easeOut,
            tabCurve: Curves.easeOut,
            elevation: 6,
            circleShadowColor: Colors.white,
            cornerRadius: const BorderRadius.all(Radius.circular(20)),
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            shadowColor: MyTheme.fontDarkColor,
            circleColor: MyTheme.darkColor,
          ),
          body: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            transitionBuilder: (Widget child, Animation<double> animation) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            },
            child: taps[_selectedIndex],
          ),
        ),
      ),
    );
  }
}
