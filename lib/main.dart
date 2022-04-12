import 'package:errand360/app/app.locator.dart';
import 'package:errand360/app/app.router.dart';
import 'package:errand360/ui/auth/signup/sign_up_view.dart';
import 'package:errand360/ui/main/main_view/main_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();

  runApp(ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      builder: () => const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpView(),
      navigatorKey: StackedService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
    );
  }
}
