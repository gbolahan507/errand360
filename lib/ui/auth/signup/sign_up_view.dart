import 'package:errand360/core/utils/validate.dart';
import 'package:errand360/ui/auth/signup/sign_up_view_model.dart';
import 'package:errand360/ui/widget/app_colors.dart';
import 'package:errand360/ui/widget/app_images.dart';
import 'package:errand360/ui/widget/app_spacing.dart';
import 'package:errand360/ui/widget/custom_button.dart';
import 'package:errand360/ui/widget/custom_textfield.dart';
import 'package:errand360/ui/widget/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';

class SignUpView extends HookWidget {
  SignUpView({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final lNameController = useTextEditingController();
    final nameController = useTextEditingController();
    final phoneController = useTextEditingController();

    return ViewModelBuilder<SignUpViewModel>.reactive(
        viewModelBuilder: () => SignUpViewModel(),
        builder: (_, model, ___) => Scaffold(
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 64.h,
                      ),
                      Center(
                          child: customtText(context,
                              text: 'Create a new account',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: AppColors.textcolor)),
                      SizedBox(
                        height: 66.h,
                      ),
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 20.sp,
                          ),
                          readOnly: model.isBusy,
                          controller: nameController,
                          hintText: 'Samuel'),
                      verticalSpaceSmall_15,
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.person,
                            size: 20.sp,
                          ),
                          readOnly: model.isBusy,
                          controller: lNameController,
                          hintText: 'Last Name'),
                      verticalSpaceSmall_15,
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 20.sp,
                          ),
                          controller: emailController,
                          readOnly: model.isBusy,
                          validator: (value) => Validate.validateEmail(value),
                          hintText: 'email Address'),
                      verticalSpaceSmall_15,
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.phone,
                            size: 20.sp,
                          ),
                          readOnly: model.isBusy,
                          controller: phoneController,
                          hintText: 'phone Number'),
                      verticalSpaceMedium,
                      customButton(context,
                          fontSize: 16.sp,
                          text: 'Continue',
                          horiMargin: 20.0.w,
                          textColor: AppColors.white,
                          busy: model.isBusy, function: () {
                        if (_formKey.currentState!.validate()) {
                          model.navigateToCompleteAccount(emailController.text);
                        }
                      }),
                      verticalSpaceSmall_13,
                      fireBaseAuthButton(context,
                          image: Images.google, text: 'Sign up with Google'),
                      verticalSpaceMedium,
                      InkWell(
                        onTap: model.navigateToLogin,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customtText(context,
                                text: 'Already a user?',
                                fontSize: 13.3.sp,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textcolor),
                            customtText(
                              context,
                              text: 'Login',
                              fontSize: 13.3.sp,
                              textAlign: TextAlign.center,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primary,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
  }
}
