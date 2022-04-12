import 'package:errand360/ui/widget/app_colors.dart';
import 'package:errand360/ui/widget/app_spacing.dart';
import 'package:errand360/ui/widget/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton(BuildContext context,
    {final text,
    final buttonColor,
    final textColor,
    final function,
    final borderColor,
    final fontSize,
    final horiMargin,
    final width,
    final bool busy = false,
    final bool showicon = false,
    final double? buttonHeight}) {
  return InkWell(
    onTap: function,
    child: Container(
      width: width,
      height: buttonHeight ?? 50.h,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 13.h, horizontal: horiMargin ?? 0),
      decoration: BoxDecoration(
          color: buttonColor ?? AppColors.primary,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: borderColor ?? AppColors.primary)),
      child: Center(
        child: busy
            ? SizedBox(
                child: const CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 20.h,
                width: 20.h,
              )
            : Row(
                children: [
                  const Spacer(),
                  customtText(
                    context,
                    text: text,
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w600,
                  ),
                  const Spacer(),
                  showicon
                      ? Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                          size: 20.sp,
                        )
                      : const SizedBox(),
                ],
              ),
      ),
    ),
  );
}

Widget fireBaseAuthButton(
  BuildContext context, {
  final String? text,
  final Color? buttonColor,
  final Color? textColor,
  final function,
  final Color? borderColor,
  final double? fontSize,
  final horiMargin,
  final String? image,
  final double? width,
  final bool busy = false,
  final bool showicon = false,
}) {
  return InkWell(
    onTap: function,
    child: Container(
      height: 50.h,
      width: width,
      alignment: Alignment.center,
      padding:
          EdgeInsets.symmetric(vertical: 13.h, horizontal: horiMargin ?? 16.w),
      decoration: BoxDecoration(
          color: AppColors.lightgray,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: Colors.grey)),
      child: Center(
        child: busy
            ? SizedBox(
                child: const CircularProgressIndicator(
                  strokeWidth: 3,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
                height: 20.h,
                width: 20.h,
              )
            : Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(image!),
                  SizedBox(
                    width: 44.w,
                  ),
                  customtText(
                    context,
                    text: text,
                    color: AppColors.textcolor,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ],
              ),
      ),
    ),
  );
}
