import 'package:flutter/material.dart';
import 'package:school_erp/components/svg_widget.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/config/app_constants.dart';
import 'package:school_erp/config/app_image.dart';
import 'package:school_erp/utilities/utils.dart';
import 'package:sizer/sizer.dart';

class ProfileUse extends StatefulWidget {
  const ProfileUse({Key? key}) : super(key: key);

  @override
  _ProfileUseState createState() => _ProfileUseState();
}

class _ProfileUseState extends State<ProfileUse> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(top: 70.0, left: padding16, right: padding16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi Johnny',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontWeight: FontWeight.w400,
                      fontSize: 34,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ID: 005   |  Title: SE',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.white.withOpacity(0.61),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 24,
                      padding: const EdgeInsets.symmetric(horizontal: 0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Text(
                        Utils.formatDateDisplay(DateTime.now(),
                            format: "dd MMMM yyyy"),
                        style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: AppColors.blueDate),
                      )),
                ],
              ),
              Container(
                width: 17.0.w,
                height: 17.0.w,
                padding: const EdgeInsets.all(2.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 0,
                      blurRadius: 2,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: AppColors.greyAvatar,
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: padding30),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0.w,
                    padding: const EdgeInsets.only(
                        top: defaultPadding,
                        left: defaultPadding,
                        bottom: defaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: AppColors.blueLine, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: svgImageWidget(
                            AppImages.icon_attendance,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 1.0),
                          child: const Text(
                            '80.39 %',
                            style: TextStyle(
                              fontFamily: 'Baloo',
                              fontWeight: FontWeight.w400,
                              fontSize: 37,
                            ),
                          ),
                        ),
                        Text(
                          'Attendance',
                          style: TextStyle(
                              fontFamily: 'Baloo',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: padding18,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: 50.0.w,
                    padding: const EdgeInsets.only(
                        top: defaultPadding,
                        left: defaultPadding,
                        bottom: defaultPadding),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(color: AppColors.blueLine, width: 1),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 70,
                          height: 70,
                          child: svgImageWidget(
                            AppImages.icon_fees_due,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 1.0),
                          child: const Text(
                            '\$6400',
                            style: TextStyle(
                              fontFamily: 'Baloo',
                              fontWeight: FontWeight.w400,
                              fontSize: 37,
                            ),
                          ),
                        ),
                        Text(
                          'Fees Due',
                          style: TextStyle(
                              fontFamily: 'Baloo',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: AppColors.grey),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
