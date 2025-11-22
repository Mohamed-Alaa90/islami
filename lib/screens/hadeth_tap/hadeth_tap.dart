import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/hadeth_tap/hadeth_details_screen.dart';
import 'package:islami/screens/hadeth_tap/item_hadeth_name.dart';
import 'package:islami/l10n/app_localizations.dart';

class HadethTap extends StatefulWidget {
  const HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    if (hadethList.isEmpty) {
      loadHadithData();
    }
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * .8,
          child: Center(
            child: Image.asset(
              'assets/images/hadeth_logo.png',
            ),
          ),
        ),
        Card(
          elevation: 6,
          margin: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              AppLocalizations.of(context)!.hadeth_name,
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                  textStyle: Theme.of(context).textTheme.titleMedium),
            ),
          ),
        ),
        if (hadethList.isEmpty)
          Center(
            child: CircularProgressIndicator(
              color: Theme.of(context).primaryColor,
            ),
          )
        else
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          HadethDetailsScreen.routeName,
                          arguments: Hadeth(
                              title: hadethList[index].title,
                              content: hadethList[index].content),
                        );
                      },
                      child: ItemHadethName(title: hadethList[index].title));
                },
                separatorBuilder: (context, index) => const Divider(
                      endIndent: 50,
                      indent: 50,
                    ),
                itemCount: hadethList.length),
          )
      ],
    );
  }

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString('assets/hadeth/ahadeth.txt');
    List<String> allHadethDataList = content.split("#\r\n");

    for (int i = 0; i < allHadethDataList.length; i++) {
      List<String> singleHadeh = allHadethDataList[i].split("\n");
      String title = singleHadeh[0];
      singleHadeh.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: singleHadeh);
      hadethList.add(hadeth);
      setState(() {});
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
