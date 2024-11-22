import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/thems.dart';

class HadethTap extends StatelessWidget {
  HadethTap({super.key});

  List<Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {
    loadHadithData();
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/hadeth_logo.png',
          ),
        ),
        Card(
          elevation: 6,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 3, color: MyTheme.fontDarkColor),
            ),
            child: Text(
              "الأحاديث",
              textAlign: TextAlign.center,
              style: GoogleFonts.amiri(
                  textStyle: Theme.of(context).textTheme.titleMedium),
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return Text('data');
              },
              separatorBuilder: (context, index) => const Divider(indent: 3,),
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
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
