import 'package:errand360/ui/widget/app_colors.dart';
import 'package:errand360/ui/widget/app_spacing.dart';
import 'package:errand360/ui/widget/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final Function(String?)? onSaved;
  final String? hintText;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final TextAlign? textAlign;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final bool? readOnly;
  final bool obscureText;
  final String? obscuringCharacter;
  final bool? checklabelText;
  final String? labelText;
  final bool? enabled;
  final Function()? onTap;
  final String? initialVlaue;

  // ignore: use_key_in_widget_constructors
  const CustomTextField({
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.onSaved,
    this.hintText,
    this.textInputAction,
    this.textInputType,
    this.textAlign,
    this.onChanged,
    this.controller,
    this.readOnly,
    this.obscureText = false,
    this.obscuringCharacter,
    this.checklabelText = false,
    this.labelText,
    this.enabled = true,
    this.onTap,
    this.initialVlaue,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        checklabelText == true
            ? Column(
                children: [
                  customtText(context,
                      text: labelText!,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  verticalSpaceTiny7,
                ],
              )
            : const SizedBox(),
        TextFormField(
          initialValue: initialVlaue,
          onTap: onTap,
          cursorColor: AppColors.black.withOpacity(0.4),
          cursorWidth: 1.w,
          cursorHeight: 15.h,
          maxLines: 1,
          enabled: enabled,
          textInputAction: textInputAction,
          style: GoogleFonts.poppins(
            color: AppColors.black,
            fontWeight: FontWeight.w500,
            fontSize: 15.sp,
            letterSpacing: 0.4,
          ),
          readOnly: readOnly!,
          decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.symmetric(
              vertical: 15.h,
              horizontal: 15.w,
            ),
            hintText: hintText,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.black,
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            filled: true,
            fillColor: AppColors.lightgray,
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.lightPurple),
              borderRadius: BorderRadius.circular(4.h),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: AppColors.lightPurple),
              borderRadius: BorderRadius.circular(4.h),
            ),
            errorBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: AppColors.lightPurple, width: 0.5),
              borderRadius: BorderRadius.circular(4.h),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: AppColors.lightPurple,
              ),
              borderRadius: BorderRadius.circular(4.h),
            ),
          ),
          obscureText: obscureText,
          obscuringCharacter: '●',
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          keyboardType: textInputType,
          onFieldSubmitted: onSaved,
          onSaved: onSaved,
          validator: validator,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
