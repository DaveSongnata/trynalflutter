import 'package:flutter/material.dart';
import 'package:trynal/base/res/styles/app_styles.dart';

class TextStyleFourth extends StatelessWidget {
  final String text;
  final TextAlign align;
  const TextStyleFourth({super.key, required this.text, this.align = TextAlign.start});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: AppStyles.Title_3.copyWith(color: Colors.white), textAlign: align,);
  }
}