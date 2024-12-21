import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider/mode_provider.dart';
import 'package:islami/screens/quran_tap/quran_tap.dart';
import 'package:provider/provider.dart';
import '../../thems.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetailsScreen extends StatefulWidget {
  const SuraDetailsScreen({super.key});

  static const String routeName = 'SuraDetails';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  String content = '';
  List<String> versesList = [];
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    final isLightMode = Provider.of<ModeProvider>(context).light;
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;

    if (isLoading) {
      loadData(data.suraNumber);
    }

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(isLightMode
              ? "assets/images/default_bg.png"
              : 'assets/images/home_dark_background.jpg'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.app_title,
            style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.titleLarge),
          ),
        ),
        body: isLoading
            ? Center(
                child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : Container(
                margin: const EdgeInsets.only(
                    top: 20, left: 20, right: 20, bottom: 50),
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Theme.of(context).primaryColor.withOpacity(0.40),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " سورة ${data.suraName}",
                          style: GoogleFonts.amiri(
                              textStyle:
                                  Theme.of(context).textTheme.titleMedium),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.play_circle),
                        ),
                      ],
                    ),
                    Divider(
                      color: Theme.of(context).primaryColor,
                      indent: 50,
                      endIndent: 50,
                    ),
                    Expanded(
                      child: ListView.separated(
                        separatorBuilder: (context, index) => Divider(
                          thickness: 1,
                          color: MyTheme.lightColor,
                        ),
                        itemCount: versesList.length,
                        itemBuilder: (context, index) => Text(
                          "{${index + 1}} ${versesList[index]}",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.almarai(
                              textStyle:
                                  Theme.of(context).textTheme.titleSmall),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
      ),
    );
  }

  Future<void> loadData(String suraNumber) async {
    content = await rootBundle.loadString('assets/quran/$suraNumber.txt');
    versesList = content.split('\n');

    setState(() {
      isLoading = false;
    });
  }
}
