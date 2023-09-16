import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String? text, fontFamily;
  final Color? color;
  final double? fontSize;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;
  final FontWeight? fontWeight;
  final TextDecoration? textDecoration;
  final TextOverflow? overflow;
  final List<Shadow>? shadows;

  CustomText(
      {this.text,
      this.fontFamily,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.height,
      this.textDecoration,
      this.maxLines,
      this.overflow,
      this.shadows});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: fontFamily == 'outfit'
          ? GoogleFonts.outfit(
              color: color ?? Colors.black,
              height: height,
              decoration: textDecoration,
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.w400,
              shadows: shadows)
          : GoogleFonts.roboto(
              color: color ?? Colors.black,
              height: height,
              decoration: textDecoration,
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.w400,
              shadows: shadows),
      overflow: overflow ?? TextOverflow.ellipsis,
      maxLines: maxLines,
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
