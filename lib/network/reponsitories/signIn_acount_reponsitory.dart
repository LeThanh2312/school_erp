import 'package:school_erp/models/data_login.dart';
import 'package:school_erp/network/request/sign_in_acount_network.dart';

abstract class SignInReponsitory {
  Future<DataLogin> getSignIn(String email, String password);
}

class SignInReponsitoryIml extends SignInReponsitory {
  @override
  Future<DataLogin> getSignIn(String email, String password) async {
    var respone = await SignInAcountNetwork().login(email, password);
    return respone;
  }
}
