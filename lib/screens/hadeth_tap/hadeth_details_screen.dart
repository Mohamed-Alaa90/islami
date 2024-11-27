import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/screens/hadeth_tap/hadeth_tap.dart';
import 'package:islami/screens/hadeth_tap/item_hadeth_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HadethDetailsScreen extends StatefulWidget {
  const HadethDetailsScreen({super.key});

  static const String routeName = 'HadethDetails';

  @override
  State<HadethDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<HadethDetailsScreen> {
  String content = '';
  bool isLoading = true;

  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/home_dark_background.jpg'),
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
        body: Container(
          margin:
              const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Theme.of(context).primaryColor.withOpacity(0.40),
          ),
          child: Column(
            children: [
              Text(
                data.title,
                style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.titleMedium),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ItemHadethDetails(content: data.content[index]);
                  },
                  itemCount: data.content.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
