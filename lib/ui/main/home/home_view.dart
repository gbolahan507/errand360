import 'package:errand360/ui/main/home/home_view_model.dart';
import 'package:errand360/ui/widget/app_colors.dart';
import 'package:errand360/ui/widget/app_images.dart';
import 'package:errand360/ui/widget/app_spacing.dart';
import 'package:errand360/ui/widget/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (_, model, ___) => Scaffold(
            backgroundColor: AppColors.background,
            body: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.w, right: 30.34),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          customtText(context,
                              text: 'Welcome',
                              fontWeight: FontWeight.w700,
                              fontSize: 27.65.sp,
                              color: AppColors.textcolor.withOpacity(0.5)),
                          customtText(context,
                              text: 'Errand360!',
                              fontWeight: FontWeight.w700,
                              fontSize: 27.65.sp,
                              color: AppColors.textcolor),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(
                        Images.notification,
                        height: 40.h,
                        width: 40.w,
                      )
                    ],
                  ),
                ),
                verticalSpaceRegular_18,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Row(
                    children: [
                      customtText(context,
                          text: 'Active Jobs',
                          fontWeight: FontWeight.w600,
                          fontSize: 16.sp,
                          color: AppColors.textcolor),
                      const Spacer(),
                      customtText(context,
                          text: 'view all',
                          fontWeight: FontWeight.w600,
                          fontSize: 11.sp,
                          color: AppColors.primary),
                    ],
                  ),
                ),
                verticalSpaceSmall_15,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.r)),
                    padding: EdgeInsets.only(
                        left: 24.w, top: 15.h, right: 21.w, bottom: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 27.h,
                              width: 27.w,
                              child: Image.asset(Images.google),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    customtText(context,
                                        text: 'Operations Manager',
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16.sp,
                                        color: AppColors.textcolor),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3.h),
                                      child: customtText(context,
                                          text: '- \$32.00 / hr',
                                          fontWeight: FontWeight.w600,
                                          fontSize: 9.sp,
                                          color: AppColors.textcolor
                                              .withOpacity(0.5)),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: customtText(context,
                                      text:
                                          'New York, New York | Remote | Full-time',
                                      fontWeight: FontWeight.w600,
                                      fontSize: 9.26.sp,
                                      color: AppColors.textcolor),
                                ),
                              ],
                            )
                          ],
                        ),
                        verticalSpaceRegular,
                        customtText(context,
                            text:
                                'We are looking for someone to assist the human resources team in the recruiting and hiring process, implement policies and strategies to improve productivity and efficiency levels and building an enjoyable company culture',
                            fontWeight: FontWeight.w600,
                            fontSize: 11.11.sp,
                            color: AppColors.textcolor),
                        verticalSpaceRegular,
                        Row(
                          children: [
                            customtText(context,
                                text: 'Edit Job Details',
                                fontWeight: FontWeight.w600,
                                fontSize: 11.11.sp,
                                color: AppColors.primary),
                            const Spacer(),
                            customtText(context,
                                text: 'Created 10 days ago',
                                fontWeight: FontWeight.w600,
                                fontSize: 9.26.sp,
                                color: AppColors.textcolor.withOpacity(0.5)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                verticalSpaceSmall_15,
                Expanded(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 16.h, horizontal: 24.w),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: const Color(0xffF2F2F2),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16.r),
                            topLeft: Radius.circular(16.r))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            customtText(context,
                                text: 'Applicants',
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: AppColors.primary),
                            const Spacer(),
                            customtText(context,
                                text: 'view all',
                                fontWeight: FontWeight.w600,
                                fontSize: 11.sp,
                                color: AppColors.primary),
                          ],
                        ),
                        verticalSpaceSmall_15,
                        Expanded(
                          child: ListView.builder(
                              padding: const EdgeInsets.all(0),
                              itemCount: 5,
                              itemBuilder: (_, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(16.r)),
                                  margin: EdgeInsets.only(bottom: 16.h),
                                  padding: EdgeInsets.only(
                                      left: 24.w,
                                      right: 27.w,
                                      top: 17.h,
                                      bottom: 15.h),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            radius: 10,
                                            backgroundImage:
                                                AssetImage(Images.profile),
                                          ),
                                          horizontalSpaceSmall,
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              customtText(context,
                                                  text: 'Katola Kehinde',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 12.sp,
                                                  color: AppColors.textcolor),
                                              customtText(context,
                                                  text: 'Brooklyn, New York',
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 11.sp,
                                                  color: AppColors.textcolor
                                                      .withOpacity(0.5)),
                                            ],
                                          ),
                                          const Spacer(),
                                          Image.asset(Images.google)
                                        ],
                                      ),
                                      verticalSpaceSmall_15,
                                      Row(
                                        children: [
                                          const _Buttons(
                                            text: 'View Profile',
                                            color: AppColors.primary,
                                            textColor: AppColors.white,
                                          ),
                                          horizontalSpaceSmall_15,
                                          const _Buttons(
                                            text: 'see Detail',
                                            color: AppColors.white,
                                            textColor: AppColors.primary,
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                );
                              }),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}

class _Buttons extends StatelessWidget {
  final String? text;
  final Color? color;
  final Color? textColor;

  const _Buttons({
    Key? key,
    this.text,
    this.color,
    this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 26.h,
      width: 83.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4.r),
        border: Border.all(color: AppColors.primary),
        color: color,
      ),
      child: Center(
        child: customtText(context,
            text: text,
            fontWeight: FontWeight.w600,
            fontSize: 11.sp,
            color: textColor),
      ),
    );
  }
}
