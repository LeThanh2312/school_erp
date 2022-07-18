import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/components/svg_widget.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/config/app_constants.dart';
import 'package:school_erp/config/app_image.dart';
import 'package:school_erp/screens/login/widgets/input_info_login.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
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
                ),
                const InputInfoLogin()
              ],
            ),
            Container(
              height: 20.0.h,
              margin: EdgeInsets.symmetric(horizontal: defaultPadding,vertical: 10.0.h),
              child: svgImageWidget(AppImages.image_login),
            )
          ],
        ),
      ),
    );
  }
}