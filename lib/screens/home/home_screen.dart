import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/screens/home/widgets/list_menu.dart';
import 'package:school_erp/screens/home/widgets/profile_use.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
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
            SizedBox(
              width: 100.0.w,
              height: 100.0.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: const [
                  ListMenu(),
                  ProfileUse(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}