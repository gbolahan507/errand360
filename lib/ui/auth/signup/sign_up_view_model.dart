import 'package:errand360/app/app.locator.dart';
import 'package:errand360/app/app.logger.dart';
import 'package:errand360/app/app.router.dart';
import 'package:errand360/app/app.router.dart';
import 'package:errand360/core/service/auth_service.dart';
import 'package:errand360/core/utils/custom_exception.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthService>();
  final log = getLogger('SignUpViewModel');

  String? userToken;

  Future<void> createUser(
      BuildContext context, Map<String, dynamic> data) async {
    try {
      setBusy(true);
      userToken = await _authService.createUser(data);
      setBusy(false);
      _navigationService.navigateTo(Routes.loginView);
      setBusy(false);
      notifyListeners();
    } on CustomException catch (e) {
      log.v(e.message);
      // showSnackBar(context, 'Error', '${e.message}');
      setBusy(false);
      notifyListeners();
    }
  }

  void navigateToCompleteAccount(String? email) {
    _navigationService.replaceWith(Routes.completeSignUpView,
        arguments: CompleteSignUpViewArguments(email: email));
  }

  void navigateToLogin() {
    _navigationService.replaceWith(Routes.loginView);
  }
}
