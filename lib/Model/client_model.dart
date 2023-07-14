class ClientData {
  int? status;
  String? type;
  String? message;
  List<Records>? records;

  ClientData({this.status, this.type, this.message, this.records});

  ClientData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    type = json['type'];
    message = json['message'];
    if (json['records'] != null) {
      records = <Records>[];
      json['records'].forEach((v) {
        records!.add(new Records.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['type'] = this.type;
    data['message'] = this.message;
    if (this.records != null) {
      data['records'] = this.records!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Records {
  String? id;
  String? userId;
  String? bId;
  String? email;
  String? password;
  String? bName;
  String? firstName;
  String? lastName;
  String? gender;
  String? contact;
  String? formId;
  String? address;
  String? cityId;
  String? stateId;
  String? countryId;
  String? postCode;
  String? image;
  Null? about;
  String? createdAt;
  String? status;
  String? bLname;
  String? bEmail;
  String? bContact;
  String? cardNumber;
  String? cardMonth;
  String? cardYear;
  String? cardCvv;
  String? cardPc;
  String? trashStatus;
  String? dupStatus;
  String? role;
  String? jobTitle;
  String? f1;
  String? f2;
  String? f3;
  String? f4;
  String? f5;
  String? f6;
  String? f7;
  String? f8;
  String? f9;
  String? f10;
  String? f11;
  String? f12;
  String? f13;
  String? f14;
  String? f15;
  String? f16;
  String? f17;
  String? f18;
  String? f19;
  String? f20;
  String? fo1;
  String? fo2;
  String? fo3;
  String? fo4;
  String? fo5;
  String? fo6;
  String? fo7;
  String? fo8;
  String? fo9;
  String? fo10;
  String? fo11;
  String? fo12;
  String? fo13;
  String? fo14;
  String? fo15;
  String? fo16;
  String? fo17;
  String? fo18;
  String? fo19;
  String? fo20;
  String? fo21;
  String? fo22;
  String? fo23;
  String? fo24;
  String? fo25;
  String? fo26;
  String? fo27;
  String? fo28;
  String? fo29;
  Null? images;
  String? code;
  String? mainId;

  Records(
      {this.id,
      this.userId,
      this.bId,
      this.email,
      this.password,
      this.bName,
      this.firstName,
      this.lastName,
      this.gender,
      this.contact,
      this.formId,
      this.address,
      this.cityId,
      this.stateId,
      this.countryId,
      this.postCode,
      this.image,
      this.about,
      this.createdAt,
      this.status,
      this.bLname,
      this.bEmail,
      this.bContact,
      this.cardNumber,
      this.cardMonth,
      this.cardYear,
      this.cardCvv,
      this.cardPc,
      this.trashStatus,
      this.dupStatus,
      this.role,
      this.jobTitle,
      this.f1,
      this.f2,
      this.f3,
      this.f4,
      this.f5,
      this.f6,
      this.f7,
      this.f8,
      this.f9,
      this.f10,
      this.f11,
      this.f12,
      this.f13,
      this.f14,
      this.f15,
      this.f16,
      this.f17,
      this.f18,
      this.f19,
      this.f20,
      this.fo1,
      this.fo2,
      this.fo3,
      this.fo4,
      this.fo5,
      this.fo6,
      this.fo7,
      this.fo8,
      this.fo9,
      this.fo10,
      this.fo11,
      this.fo12,
      this.fo13,
      this.fo14,
      this.fo15,
      this.fo16,
      this.fo17,
      this.fo18,
      this.fo19,
      this.fo20,
      this.fo21,
      this.fo22,
      this.fo23,
      this.fo24,
      this.fo25,
      this.fo26,
      this.fo27,
      this.fo28,
      this.fo29,
      this.images,
      this.code,
      this.mainId});

  Records.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    bId = json['b_id'];
    email = json['email'];
    password = json['password'];
    bName = json['b_name'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    gender = json['gender'];
    contact = json['contact'];
    formId = json['form_id'];
    address = json['address'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    postCode = json['post_code'];
    image = json['image'];
    about = json['about'];
    createdAt = json['created_at'];
    status = json['status'];
    bLname = json['b_lname'];
    bEmail = json['b_email'];
    bContact = json['b_contact'];
    cardNumber = json['card_number'];
    cardMonth = json['card_month'];
    cardYear = json['card_year'];
    cardCvv = json['card_cvv'];
    cardPc = json['card_pc'];
    trashStatus = json['trash_status'];
    dupStatus = json['dup_status'];
    role = json['role'];
    jobTitle = json['job_title'];
    f1 = json['f1'];
    f2 = json['f2'];
    f3 = json['f3'];
    f4 = json['f4'];
    f5 = json['f5'];
    f6 = json['f6'];
    f7 = json['f7'];
    f8 = json['f8'];
    f9 = json['f9'];
    f10 = json['f10'];
    f11 = json['f11'];
    f12 = json['f12'];
    f13 = json['f13'];
    f14 = json['f14'];
    f15 = json['f15'];
    f16 = json['f16'];
    f17 = json['f17'];
    f18 = json['f18'];
    f19 = json['f19'];
    f20 = json['f20'];
    fo1 = json['fo1'];
    fo2 = json['fo2'];
    fo3 = json['fo3'];
    fo4 = json['fo4'];
    fo5 = json['fo5'];
    fo6 = json['fo6'];
    fo7 = json['fo7'];
    fo8 = json['fo8'];
    fo9 = json['fo9'];
    fo10 = json['fo10'];
    fo11 = json['fo11'];
    fo12 = json['fo12'];
    fo13 = json['fo13'];
    fo14 = json['fo14'];
    fo15 = json['fo15'];
    fo16 = json['fo16'];
    fo17 = json['fo17'];
    fo18 = json['fo18'];
    fo19 = json['fo19'];
    fo20 = json['fo20'];
    fo21 = json['fo21'];
    fo22 = json['fo22'];
    fo23 = json['fo23'];
    fo24 = json['fo24'];
    fo25 = json['fo25'];
    fo26 = json['fo26'];
    fo27 = json['fo27'];
    fo28 = json['fo28'];
    fo29 = json['fo29'];
    images = json['images'];
    code = json['code'];
    mainId = json['main_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['b_id'] = this.bId;
    data['email'] = this.email;
    data['password'] = this.password;
    data['b_name'] = this.bName;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['gender'] = this.gender;
    data['contact'] = this.contact;
    data['form_id'] = this.formId;
    data['address'] = this.address;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['post_code'] = this.postCode;
    data['image'] = this.image;
    data['about'] = this.about;
    data['created_at'] = this.createdAt;
    data['status'] = this.status;
    data['b_lname'] = this.bLname;
    data['b_email'] = this.bEmail;
    data['b_contact'] = this.bContact;
    data['card_number'] = this.cardNumber;
    data['card_month'] = this.cardMonth;
    data['card_year'] = this.cardYear;
    data['card_cvv'] = this.cardCvv;
    data['card_pc'] = this.cardPc;
    data['trash_status'] = this.trashStatus;
    data['dup_status'] = this.dupStatus;
    data['role'] = this.role;
    data['job_title'] = this.jobTitle;
    data['f1'] = this.f1;
    data['f2'] = this.f2;
    data['f3'] = this.f3;
    data['f4'] = this.f4;
    data['f5'] = this.f5;
    data['f6'] = this.f6;
    data['f7'] = this.f7;
    data['f8'] = this.f8;
    data['f9'] = this.f9;
    data['f10'] = this.f10;
    data['f11'] = this.f11;
    data['f12'] = this.f12;
    data['f13'] = this.f13;
    data['f14'] = this.f14;
    data['f15'] = this.f15;
    data['f16'] = this.f16;
    data['f17'] = this.f17;
    data['f18'] = this.f18;
    data['f19'] = this.f19;
    data['f20'] = this.f20;
    data['fo1'] = this.fo1;
    data['fo2'] = this.fo2;
    data['fo3'] = this.fo3;
    data['fo4'] = this.fo4;
    data['fo5'] = this.fo5;
    data['fo6'] = this.fo6;
    data['fo7'] = this.fo7;
    data['fo8'] = this.fo8;
    data['fo9'] = this.fo9;
    data['fo10'] = this.fo10;
    data['fo11'] = this.fo11;
    data['fo12'] = this.fo12;
    data['fo13'] = this.fo13;
    data['fo14'] = this.fo14;
    data['fo15'] = this.fo15;
    data['fo16'] = this.fo16;
    data['fo17'] = this.fo17;
    data['fo18'] = this.fo18;
    data['fo19'] = this.fo19;
    data['fo20'] = this.fo20;
    data['fo21'] = this.fo21;
    data['fo22'] = this.fo22;
    data['fo23'] = this.fo23;
    data['fo24'] = this.fo24;
    data['fo25'] = this.fo25;
    data['fo26'] = this.fo26;
    data['fo27'] = this.fo27;
    data['fo28'] = this.fo28;
    data['fo29'] = this.fo29;
    data['images'] = this.images;
    data['code'] = this.code;
    data['main_id'] = this.mainId;
    return data;
  }
}
