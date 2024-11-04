import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/quran_tap/item_sura_name.dart';
import 'package:islami/thems.dart';

// ignore: must_be_immutable
class QuranTap extends StatelessWidget {
  QuranTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset('assets/images/qur2an_screen_logo.png'),
        ),
        Divider(
          thickness: 3,
          color: MyTheme.lightColor,
        ),
        Row(
            children: [
          Expanded(
            child: Text(
              textAlign: TextAlign.center,
              'اسم السوره',
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

              'عدد الايات',
              style: GoogleFonts.amiri(
                  textStyle: Theme.of(context).textTheme.titleMedium),
            ),
          ),
        ]),
        Divider(
          thickness: 3,
          color: MyTheme.lightColor,
        ),
        Expanded(
          child: ListView.separated(
            separatorBuilder: (context, index) => Divider(
              thickness: 1,
              color: MyTheme.lightColor,
            ),
            itemBuilder: (context, index) {
              return ItemSuraName(
                name: suraNames[index],
                index: index,
              );
            },
            itemCount: suraNames.length,
          ),
        ),
      ],
    );
  }

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
