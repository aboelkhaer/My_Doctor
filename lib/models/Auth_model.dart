

class UserDataModel {
  String? message;
  String? email;
  String? name;
  String? country;
  String? city;
  String? street;
  String? zipCode;
  String? gender;
  String? maritalState;
  String? brithdate;
  int? age;
  String? phone;

  UserDataModel(
      {this.message,
        this.email,
        this.name,
        this.country,
        this.city,
        this.street,
        this.zipCode,
        this.gender,
        this.maritalState,
        this.brithdate,
        this.age,
        this.phone});

  UserDataModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    email = json['email'];
    name = json['name'];
    country = json['country'];
    city = json['city'];
    street = json['street'];
    zipCode = json['zipCode'];
    gender = json['gender'];
    maritalState = json['maritalState'];
    brithdate = json['brithdate'];
    age = json['age'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['email'] = this.email;
    data['name'] = this.name;
    data['country'] = this.country;
    data['city'] = this.city;
    data['street'] = this.street;
    data['zipCode'] = this.zipCode;
    data['gender'] = this.gender;
    data['maritalState'] = this.maritalState;
    data['brithdate'] = this.brithdate;
    data['age'] = this.age;
    data['phone'] = this.phone;
    return data;
  }
}


class LoginModel {
  String? response;
  String? dateexp;
  UserDataModel? succ;

  LoginModel({this.response, this.dateexp, this.succ});

  LoginModel.fromJson(Map<String, dynamic> json) {
    response = json['response'];
    dateexp = json['dateexp'];
    succ = json['succ'] != null ? new UserDataModel.fromJson(json['succ']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['response'] = this.response;
    data['dateexp'] = this.dateexp;
    if (this.succ != null) {
      data['succ'] = this.succ!.toJson();
    }
    return data;
  }
}


