import 'package:errand360/core/utils/validate.dart';
import 'package:errand360/ui/auth/login/login_view_model.dart';
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

class LoginView extends HookWidget {
  LoginView({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();

    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (_, model, ___) => Scaffold(
              body: Form(
                key: _formKey,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 64.h,
                      ),
                      Center(
                          child: customtText(context,
                              text: 'Login into your account',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                              color: AppColors.textcolor)),
                      SizedBox(
                        height: 66.h,
                      ),
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.mail,
                            size: 20.sp,
                          ),
                          readOnly: model.isBusy,
                          controller: emailController,
                          validator: (value) => Validate.validateEmail(value),
                          hintText: 'Mail@errrand360.com'),
                      verticalSpaceSmall_15,
                      CustomTextField(
                          prefixIcon: Icon(
                            Icons.lock,
                            size: 20.sp,
                          ),
                          suffixIcon: Icon(
                            Icons.visibility_off_outlined,
                            size: 20.sp,
                          ),
                          readOnly: model.isBusy,
                          controller: passwordController,
                          validator: (value) =>
                              Validate.validatePassword(value!),
                          hintText: 'Mail@errrand360.com'),
                      verticalSpaceMedium,
                      customButton(context,
                          fontSize: 16.sp,
                          text: 'Login',
                          horiMargin: 20.0.w,
                          textColor: AppColors.white,
                          busy: model.isBusy, function: () {
                        Map<String, dynamic> data = {
                          'email': emailController.text,
                          'password': passwordController.text
                        };
                        if (_formKey.currentState!.validate()) {
                          model.loginUser(context, data);
                        }
                      }),
                      SizedBox(
                        height: 48.h,
                      ),
                      fireBaseAuthButton(context,
                          image: Images.google, text: 'Continue with Google'),
                      verticalSpaceMedium,
                      InkWell(
                        onTap: model.navigateToSignUp,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            customtText(context,
                                text: 'Don’t have an account?  ',
                                fontSize: 13.3.sp,
                                textAlign: TextAlign.center,
                                fontWeight: FontWeight.w600,
                                color: AppColors.textcolor),
                            customtText(
                              context,
                              text: 'Sign up',
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
