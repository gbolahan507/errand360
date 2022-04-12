import 'package:errand360/core/service/auth_service.dart';
import 'package:errand360/ui/auth/complete_sign_up_view/complete_sign_up_view.dart';
import 'package:errand360/ui/auth/login/login_view.dart';
import 'package:errand360/ui/auth/signup/sign_up_view.dart';
import 'package:errand360/ui/main/home/home_view.dart';
import 'package:errand360/ui/main/main_view/main_view.dart';
import 'package:errand360/ui/main/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView, initial: true),
    CupertinoRoute(page: LoginView),
    CupertinoRoute(page: SignUpView),
    CupertinoRoute(page: CompleteSignUpView),
    CupertinoRoute(page: MainView),
    CupertinoRoute(page: HomeView),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService),
  ],
  logger: StackedLogger(),
)
class AppSetup {
  /** Serves no purpose besides having an annotation attached to it */
}
