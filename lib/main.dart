import 'package:flutter/material.dart';
import 'package:islami/screens/hadeth_tap/hadeth_details_screen.dart';
import 'package:islami/screens/home.dart';
import 'package:islami/screens/quran_tap/sura_details_screen.dart';
import 'package:islami/screens/splach.dart';
import 'package:islami/thems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme,
      theme: MyTheme.lightTheme,
      themeMode: ThemeMode.system,
      locale: Locale('en'),
      routes: {
        Splash.routeName: (context) => const Splash(),
        Home.routeName: (context) => const Home(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },
      initialRoute: Home.routeName,
    );
  }
}
