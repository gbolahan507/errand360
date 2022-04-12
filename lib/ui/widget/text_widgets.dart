import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customtText(
  BuildContext context, {
  String? text,
  Color? color,
  double? fontSize,
  double? letterSpacing,
  TextAlign? textAlign,
  int? maxLines,
  TextOverflow? overflow,
  final decoration,
  final fontWeight,
  final onTap,
}) {
  return InkWell(
    onTap: onTap,
    child: Text(
      text!,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: GoogleFonts.montserrat(
          color: color,
          letterSpacing: letterSpacing,
          fontSize: fontSize,
          fontWeight: fontWeight,
          decoration: decoration),
    ),
  );
}
