import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Widget child;
  final double? width ;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final double elevation;
  final Color? color;
  final BorderRadiusGeometry? borderRadius;
  final BoxBorder? border;

  const CustomCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.all(10),
    this.padding = const EdgeInsets.all(10),
    this.elevation = 4.0,
    this.color = Colors.white,
    this.borderRadius = const BorderRadius.all(Radius.circular(15)),
    this.border,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      margin: margin,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius ?? BorderRadius.circular(0),
        side: border != null
            ? BorderSide(
                color: (border as Border).top.color,
                width: (border as Border).top.width,
              )
            : BorderSide.none,
      ),
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          border: border,
        ),
        width: width,
        child: child,
      ),
    );
  }
}
