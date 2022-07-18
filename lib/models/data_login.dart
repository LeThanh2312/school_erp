class DataLogin{
  DataLogin({
    this.token,
    this.user,
    this.message,
  });

  String? token;
  String? user;
  String? message;

  factory DataLogin.fromJson(Map<String, dynamic> json) =>
      DataLogin(
        token: json['token'] as String?,
        user: json['user'] as String?,
        message: json['message'],
      );
}