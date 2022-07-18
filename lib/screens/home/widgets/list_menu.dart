import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/components/svg_widget.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/config/app_constants.dart';
import 'package:school_erp/models/menu_grid.dart';
import 'package:sizer/sizer.dart';

class ListMenu extends StatefulWidget {
  const ListMenu({Key? key}) : super(key: key);

  @override
  _InputInfoLoginState createState() => _InputInfoLoginState();
}

class _InputInfoLoginState extends State<ListMenu> {
  List<MenuModel> listMenu = getList();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      height: 60.0.h,
      padding: EdgeInsets.only(top: 14.0.h, left: padding16, right: padding16,bottom: 2.0),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0), topRight: Radius.circular(30.0))),
      child: Column(
        children: [

          SizedBox(
            height: 43.0.h,
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.all(0),
              itemCount: listMenu.length,
              itemBuilder: (BuildContext ctx, int index) {
                return feedbackItem(listMenu[index], index, listMenu.length);
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 5.0.h / 3.3.h,
                  crossAxisSpacing: padding16,
                  mainAxisSpacing: padding16),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 135,
            height: 5,
            margin: const EdgeInsets.only(top: 10),
            decoration: BoxDecoration(
                color: AppColors.greyGridEnd,
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ],
      ),
    );
  }

  Widget feedbackItem(MenuModel feedbackItem, int index, int length) {
    return InkWell(
      onTap: () async {},
      child: Column(
        children: [
          Container(
            width: 100.0.w,
            padding: const EdgeInsets.all(defaultPadding),
            decoration: BoxDecoration(
              color: AppColors.greyGrid,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: svgImageWidget(
                    feedbackItem.image!,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  feedbackItem.name!,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color(0xFF4F4F4F)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
