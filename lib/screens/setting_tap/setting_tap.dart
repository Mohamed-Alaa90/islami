import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami/provider/mode_provider.dart';
import 'package:islami/widgets/custom_bottoms_setting.dart';
import 'package:provider/provider.dart';
import 'package:islami/l10n/app_localizations.dart';

class SettingTap extends StatelessWidget {
  const SettingTap({super.key});

  @override
  Widget build(BuildContext context) {
    final modeProvider = Provider.of<ModeProvider>(context);
    final isLightMode = modeProvider.light;
    final isArabic = modeProvider.locale == const Locale('ar');
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Provider.of<ModeProvider>(context, listen: false).changMode();
            },
            child: CustomBottomsSetting(
              text: Text(
                style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.titleMedium),
                isLightMode
                    ? AppLocalizations.of(context)!.darkTheme
                    : AppLocalizations.of(context)!.lightTheme,
              ),
              icon: Icon(
                size: 35,
                isLightMode ? Icons.light_mode : Icons.dark_mode,
                color: Colors.white,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Provider.of<ModeProvider>(context, listen: false).changLanguage();
            },
            child: CustomBottomsSetting(
              text: Text(
                style: GoogleFonts.amiri(
                    textStyle: Theme.of(context).textTheme.titleMedium),
                isArabic
                    ? AppLocalizations.of(context)!.arbic
                    : AppLocalizations.of(context)!.english,
              ),
              icon: const Icon(Icons.language, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
