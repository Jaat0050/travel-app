import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel/widgets/app_text.dart';


// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  final Color color;
  final Color backgroundColor;
  final Color borderColor;
  double size;
  String? text;
  IconData? icon;
  bool? isIcon;



  AppButton({super.key, 
  this.isIcon=false,
  this.text="hi",
  this.icon,
  required this.size,
  required this.color, 
  required this.backgroundColor, 
  required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: size,
      width: size,
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          width: 1.0,
        ),
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor),
      child: isIcon==false?Center(child: AppText(text: text! , color: color,)):Center(child: Icon(icon, color: color,)),
    );
  }
}
