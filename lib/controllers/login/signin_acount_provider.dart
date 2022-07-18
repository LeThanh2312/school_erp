import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school_erp/components/snackar_notification.dart';
import 'package:school_erp/models/data_login.dart';
import 'package:school_erp/network/reponsitories/signIn_acount_reponsitory.dart';
import 'package:school_erp/screens/home/home_screen.dart';

class SignInAccountProvider with ChangeNotifier{
  late String email;
  late String password;
  late DataLogin dataLogin;

  Future<void> requestSignIn(BuildContext context,String user,String password) async {
    dataLogin = await SignInReponsitoryIml().getSignIn(user,password);

    if(dataLogin.token != null){
      Navigator.of(context).pushAndRemoveUntil<dynamic>(
          MaterialPageRoute<dynamic>(
              builder: (BuildContext context) =>
                  const HomeScreen()),

          (Route<dynamic> route) => false);
    } else{
      showSnackbar(context);
    }

  }
}