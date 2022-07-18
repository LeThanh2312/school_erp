import 'package:flutter/material.dart';
import 'package:school_erp/controllers/login/signin_acount_provider.dart';
import 'package:school_erp/routes.dart';
import 'package:school_erp/screens/splash/splash_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
      return Sizer(builder: (context, orientation, deviceType) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider.value(value: SignInAccountProvider()),
          ],
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              routes: Routes.routes,
              home: const SplashScreen()),
        );
      });
    });
  }
}
