import 'package:flutter/material.dart';

class SuraDetailsScreen extends StatelessWidget {
  const SuraDetailsScreen({super.key});

  static const String routeName = 'SuraDetails';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/images/default_bg.png'),
          ),
        ),
        child: Scaffold(
          appBar: AppBar(
            title: Text(args.name),
          ),
        ),
      ),
    );
  }
}

class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
