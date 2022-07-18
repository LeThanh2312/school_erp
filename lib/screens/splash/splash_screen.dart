import 'package:flutter/material.dart';
import 'package:school_erp/components/svg_widget.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/config/app_image.dart';
import 'package:sizer/sizer.dart';
import '../../routes.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Navigator.of(context).pushNamed(Routes.login);
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 100.0.w,
        height: 100.0.h,
        decoration: BoxDecoration(
            gradient:LinearGradient(
                begin: const Alignment(0.8, 1),
                end:  Alignment.topLeft,
                colors:<Color>[
                  AppColors.blueBackground,
                  AppColors.blueBackgroundDark,
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20.0.h),
              child: svgImageWidget(AppImages.image_logo),
            ),
            Container(
              width: 100.0.w,
              height: 45.0.h,
              alignment: Alignment.bottomCenter,
              child: svgImageWidget(AppImages.image_splash),
            ),
          ],
        ),
      ),
    );
  }
}
