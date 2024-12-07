import 'package:flutter/material.dart';


class CustomBottomsSetting extends StatelessWidget {
  const CustomBottomsSetting(
      {super.key, required this.text, required this.icon});

  final Text text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).primaryColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [text, icon],
      ),
    );
  }
}
