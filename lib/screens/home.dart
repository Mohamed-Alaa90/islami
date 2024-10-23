import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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
  int _selectedIndex = 0;

  List<Widget> taps = [
    QuranTap(),
    const HadethTap(),
    const SebhaTap(),
    const RadioTap(),
    const SettingTap(),
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
          backgroundColor: Colors.transparent, // للتأكد من أن الخلفية تظهر
          appBar: AppBar(
            title: Text(
              'اسلامي',
              style: MyTheme.lightTheme.textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: BottomNavyBar(
            selectedIndex: _selectedIndex,
            showElevation: true, // use this to remove appBar's elevation
            onItemSelected: (index) => setState(() {
              _selectedIndex = index;
              (
                index,
                duration: const Duration(milliseconds: 300),
                curve: Curves.ease
              );
            }),
            items: [
              BottomNavyBarItem(
                icon: const Icon(Icons.apps),
                title: const Text('Home'),
                activeColor: Colors.red,
              ),
              BottomNavyBarItem(
                  icon: const Icon(Icons.people),
                  title: const Text('Users'),
                  activeColor: Colors.purpleAccent),
              BottomNavyBarItem(
                  icon: const Icon(Icons.message),
                  title: const Text('Messages'),
                  activeColor: Colors.pink),
              BottomNavyBarItem(
                  icon: const Icon(Icons.settings),
                  title: const Text('Settings'),
                  activeColor: Colors.blue),
            ],
          ),
          body: taps[_selectedIndex],
        ),
      ),
    );
  }
}
