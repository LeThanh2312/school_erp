import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:school_erp/components/svg_widget.dart';
import 'package:school_erp/config/app_color.dart';
import 'package:school_erp/config/app_constants.dart';
import 'package:school_erp/config/app_image.dart';
import 'package:school_erp/controllers/login/signin_acount_provider.dart';
import 'package:sizer/sizer.dart';

import '../../../routes.dart';

class InputInfoLogin extends StatefulWidget {
  const InputInfoLogin({Key? key}) : super(key: key);

  @override
  _InputInfoLoginState createState() => _InputInfoLoginState();
}

class _InputInfoLoginState extends State<InputInfoLogin> {
  bool showPassword = true;
  bool _validateName = true;
  bool _validatePassword = true;
  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0.w,
      height: 73.0.h,
      padding: EdgeInsets.only(top:10.0.w,left: padding30,right: padding30),
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight:Radius.circular(30.0))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi Student',
            style: TextStyle(
              fontFamily: 'Baloo',
              fontWeight: FontWeight.w400,
              fontSize: 34,
              color: AppColors.black,
            ),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            'Sign in to continue',
            style: TextStyle(
              fontFamily: 'Baloo',
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: AppColors.grey,
            ),
          ),
          SizedBox(
            height: 20.0.w,
          ),
          Text(
            'Mobile Number/Email',
            style: TextStyle(
              fontFamily: 'Baloo',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.greyLight,
            ),
          ),
          TextField(
            controller: _controllerName,
            style: TextStyle(
              color: AppColors.black,
            ),
            onChanged: (text) => setState(() => _validateName = false),
            decoration: InputDecoration(
              hintText: 'Mobile Number/Email',
              hintStyle: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.only(top: 6.0),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.greyLine),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
              ),
              errorText: _validateName ? 'Value Can\'t Be Empty' : null,
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            'Password',
            style: TextStyle(
              fontFamily: 'Baloo',
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: AppColors.greyLight,
            ),
          ),
          TextField(
            obscureText: showPassword,
            controller: _controllerPassword,
            onChanged: (text) => setState(() => _validatePassword = false),
            style: TextStyle(
              color: AppColors.black,
            ),
            decoration: InputDecoration(
              hintText: 'Password',
              hintStyle: TextStyle(
                color: AppColors.grey,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              contentPadding: const EdgeInsets.only(top: 11.0),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.greyLine),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.cyan),
              ),
              suffixIcon: IconButton(
                onPressed: () async {
                  showPassword = !showPassword;
                  setState(() {

                  });
                },
                icon: Container(
                  child: svgImageWidget(
                    AppImages.icon_show_password,
                  ),
                ),
              ),
              errorText: _validatePassword ? 'Value Can\'t Be Empty' : null,
            ),
          ),

          InkWell(
            onTap: (){
              setState(() {
                if(_controllerName.text.isNotEmpty || _controllerPassword.text.isNotEmpty){
                  context.read<SignInAccountProvider>().requestSignIn(context,_controllerName.text,_controllerPassword.text);
                }else if(_controllerName.text.isEmpty){
                  _validateName = true;
                }else if(_controllerPassword.text.isEmpty){
                  _validatePassword = true;
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              height: 54,
              margin: EdgeInsets.only(top: 10.0.w, left: 0, right: 0, bottom: 5.0.w),
              padding: const EdgeInsets.symmetric(horizontal: padding30),
              decoration: BoxDecoration(
                  gradient:LinearGradient(
                      begin:  Alignment.topLeft,
                      end: const Alignment(0.8, 1),
                      colors:<Color>[
                        AppColors.blueBackground,
                        AppColors.blueBackgroundDark,
                      ]
                  ),
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Text(
                    'SIGN IN',
                    style: TextStyle(
                      fontFamily: 'Baloo',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: svgImageWidget(
                      AppImages.icon_arrow_right,
                    ),
                  ),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
