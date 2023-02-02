class UserDataModel {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? fcmToken;
  bool? isVip;

  UserDataModel(
      {this.id,
      this.firstName,
      this.lastName,
      this.email,
      this.fcmToken,
      this.isVip});

  factory UserDataModel.fromJson(Map<String, dynamic> json) {
    return UserDataModel(
      id: json['id'].toString(),
      firstName: json['firstName'].toString(),
      lastName: json['lastName'].toString(),
      email: json['email'].toString(),
      fcmToken: json['fcmToken'].toString(),
      isVip: json['isVip'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['email'] = email;
    data['fcmToken'] = fcmToken;
    data['isVip'] = isVip;
    return data;
  }
}
