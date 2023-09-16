import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/colors.dart';

class GradientButton extends StatelessWidget {
  final String? text;
  final VoidCallback? onPressed;
  final List<Color>? gradientColors;
  final Color? textColor;
  final double? width, height, fontSize;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final TextAlign? textAlign;
  final int? maxLines;
  final FontWeight? fontWeight;

  GradientButton({
    this.text,
    this.onPressed,
    this.gradientColors,
    this.textColor,
    this.width,
    this.height,
    this.fontSize,
    this.padding,
    this.borderRadius,
    this.textAlign,
    this.maxLines,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: height ?? 52,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: borderRadius ?? BorderRadius.circular(15.0),
            gradient: LinearGradient(
              colors: gradientColors ?? [AppColors.primary, AppColors.primary2],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: padding ?? EdgeInsets.all(0),
              child: Text(
                text ?? "",
                textAlign: textAlign ?? TextAlign.center,
                maxLines: maxLines ?? 1,
                style: GoogleFonts.roboto(
                  color: textColor ?? Colors.white,
                  fontSize: fontSize ?? 16,
                  fontWeight: fontWeight ?? FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
