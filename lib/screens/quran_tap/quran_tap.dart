import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/quran_tap/item_sura_name.dart';
import 'package:islami/screens/quran_tap/sura_details_screen.dart';
import 'package:islami/thems.dart';
class QuranTap extends StatelessWidget {
  QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          //height: MediaQuery.of(context).size.height * 0.2,
          width: MediaQuery.of(context).size.width * 0.5,
          child: Center(
            child: Image.asset('assets/images/qur2an_screen_logo.png'),
          ),
        ),
        // Divider(
        //   thickness: 3,
        //   color: MyTheme.lightColor,
        // ),
        Card(
          //borderRadius: BorderRadius.circular(25),
          elevation: 6,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),

          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              border: Border.all(width: 3, color: MyTheme.fontDarkColor),
            ),
            child: Row(children: [
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  "عدد الأيات",
                  style: GoogleFonts.amiri(
                      textStyle: Theme.of(context).textTheme.titleMedium),
                ),
              ),
              SizedBox(
                height: 40,
                child: VerticalDivider(
                  color: Theme.of(context).primaryColor,
                  thickness: 3,
                ),
              ),
              Expanded(
                child: Text(
                  textAlign: TextAlign.center,
                  'اسم السوره',
                  style: GoogleFonts.amiri(
                      textStyle: Theme.of(context).textTheme.titleMedium),
                ),
              ),
            ]),
          ),
        ),

        Expanded(
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            // separatorBuilder: (context, index) => Divider(
            //   endIndent: 35,
            //   indent: 35,
            //   thickness: 2,
            //   color: MyTheme.lightColor,
            // ),
            itemBuilder: (context, index) {
              return InkWell(
                key: ValueKey(index),
                onTap: () {
                  Navigator.pushNamed(context, SuraDetailsScreen.routeName,
                      arguments: SuraData(
                          suraName: suraNames[index],
                          suraNumber: (index + 1).toString()));
                },
                child: ItemSuraName(
                  data: SuraData(
                      suraName: suraNames[index],
                      suraNumber: versesNumber[index].toString()),
                ),
              );
            },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }

  final List<int> versesNumber = [
    7,
    286,
    200,
    176,
    120,
    165,
    206,
    75,
    129,
    109,
    123,
    111,
    43,
    52,
    99,
    128,
    111,
    110,
    98,
    135,
    112,
    78,
    118,
    64,
    77,
    227,
    93,
    88,
    69,
    60,
    34,
    30,
    73,
    54,
    45,
    83,
    182,
    88,
    75,
    85,
    54,
    53,
    89,
    59,
    37,
    35,
    38,
    29,
    18,
    45,
    60,
    49,
    62,
    55,
    78,
    96,
    29,
    22,
    24,
    13,
    14,
    11,
    11,
    18,
    12,
    12,
    30,
    52,
    52,
    44,
    28,
    28,
    20,
    56,
    40,
    31,
    50,
    40,
    46,
    42,
    29,
    19,
    36,
    25,
    22,
    17,
    19,
    26,
    30,
    20,
    15,
    21,
    11,
    8,
    5,
    19,
    5,
    8,
    8,
    11,
    11,
    8,
    3,
    9,
    5,
    4,
    6,
    3,
    6,
    3,
    5,
    4,
    5,
    6
  ];
  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];
}

class SuraData {
  final String suraName;
  final String suraNumber;

  SuraData({required this.suraName, required this.suraNumber});
}
