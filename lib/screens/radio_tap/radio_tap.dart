import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../provider/radios_provider.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => RadiosProvider(),
      builder: (context, child) {
        final radiosProvider = Provider.of<RadiosProvider>(context);

        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/radio_head.png"),
            const SizedBox(height: 40),
            Text(
              radiosProvider.currentRadioName,
              style: GoogleFonts.amiri(
                textStyle: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => radiosProvider.previousRadio(),
                  child: Image.asset("assets/images/ic_back.png"),
                ),
                InkWell(
                  onTap: () => radiosProvider.togglePlayPause(),
                  child: radiosProvider.isPlaying
                      ? Icon(Icons.stop,
                      color: Theme.of(context).primaryColor, size: 35)
                      : Image.asset("assets/images/Icon_awesome-play.png"),
                ),
                InkWell(
                  onTap: () => radiosProvider.nextRadios(),
                  child: Image.asset("assets/images/ic_next.png"),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
