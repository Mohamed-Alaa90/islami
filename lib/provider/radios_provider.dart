import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class RadiosProvider extends ChangeNotifier {
  final List<Map<String, String>> radios = [
    {
      "name": "إذاعة القرآن الكريم مصر",
      "url": "http://live.mp3quran.net:9850",
    },
    {
      "name": "إذاعة القرآن الكريم السعودية",
      "url": "https://stream.radiojar.com/8s5u5tpdtwzuv",
    },
  ];

  final AudioPlayer player = AudioPlayer();
  bool isPlaying = false;
  int currentRadioIndex = 0;

  String get currentRadioName => radios[currentRadioIndex]["name"]!;

  String get currentRadioUrl => radios[currentRadioIndex]["url"]!;

  void togglePlayPause() async {
    if (isPlaying) {
      await player.stop();
      isPlaying = false;
    } else {
      await player.play(UrlSource(currentRadioUrl));
      isPlaying = true;
    }
    notifyListeners();
  }

  void nextRadios() async {
    if (radios.isEmpty) return;

    currentRadioIndex = (currentRadioIndex + 1) % radios.length;

    if (isPlaying) {
      await player.stop(); // وقف أي بث جاري
      await player.play(UrlSource(currentRadioUrl));
    }

    notifyListeners();
  }

  void previousRadio() async {
    if (radios.isEmpty) return;

    currentRadioIndex = (currentRadioIndex - 1) % radios.length;
    if (currentRadioIndex < 0) currentRadioIndex = radios.length - 1;

    if (isPlaying) {
      await player.stop();
      await player.play(UrlSource(currentRadioUrl));
    }

    notifyListeners();
  }

}
