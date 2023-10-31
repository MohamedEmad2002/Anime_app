class RegisterModel {
  RegisterModel({
    required this.message,
    required this.statusCode,
    required this.token,
    required this.user,
  });
  late final String message;
  late final int statusCode;
  late final String token;
  late final User user;
  
  RegisterModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    statusCode = json['statusCode'];
    token = json['token'];
    user = User.fromJson(json['user']);
  }

  dynamic toJson() {
    final  data = <String, dynamic>{};
    data['message'] = message;
    data['statusCode'] = statusCode;
    data['token'] = token;
    data['user'] = user.toJson();
    return data;
  }
}

class User {
  User({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.avatar,
  });
  late final String name;
  late final String email;
  late final String phoneNumber;
  late final String avatar;
  
  User.fromJson(Map<String, dynamic> json){
    name = json['name'];
    email = json['email'];
    phoneNumber = json['phone_number'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    _data['phone_number'] = phoneNumber;
    _data['avatar'] = avatar;
    return _data;
  }
}