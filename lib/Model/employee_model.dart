class EmployeeData {
  int? status;
  String? type;
  String? message;
  List<EmployeeRecords>? records;

  EmployeeData({this.status, this.type, this.message, this.records});

  EmployeeData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    type = json['type'];
    message = json['message'];
    if (json['records'] != null) {
      records = <EmployeeRecords>[];
      json['records'].forEach((v) {
        records!.add(new EmployeeRecords.fromJson(v));
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

class EmployeeRecords {
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
  String? address;
  String? cityId;
  String? stateId;
  String? countryId;
  String? postCode;
  String? image;
  Null? about;
  String? createdAt;
  String? status;
  String? trashStatus;
  String? role;
  String? dept;
  String? jobTitle;
  String? duration;
  String? start;
  String? end;
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
  String? o1;
  String? o2;
  String? o3;
  String? o4;
  String? o5;
  String? o6;
  String? o7;
  String? o8;
  String? o9;
  String? o10;
  String? o11;
  String? o12;
  String? o13;
  String? o14;
  String? o15;
  String? o16;
  String? o17;
  String? o18;
  String? o19;
  String? o20;
  String? formId;
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
  String? fo30;
  String? fo31;
  String? fo32;
  String? fo33;
  String? fo34;
  String? fo35;
  String? fo36;
  String? fo37;
  String? fo38;
  String? fo39;
  String? fo40;
  String? cardNumber;
  String? cardMonth;
  String? cardYear;
  String? cardCvv;
  String? images;
  String? cardPc;
  String? formRecordId;
  String? formRecordData;
  String? isHr;
  String? code;
  String? timezone;
  String? sundayStart;
  String? sundayEnd;
  String? mondayStart;
  String? mondayEnd;
  String? tuesdayStart;
  String? tuesdayEnd;
  String? wednesdayStart;
  String? wednesdayEnd;
  String? thursdayStart;
  String? thursdayEnd;
  String? fridayStart;
  String? fridayEnd;
  String? saturdayStart;
  String? saturdayEnd;

  EmployeeRecords(
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
      this.address,
      this.cityId,
      this.stateId,
      this.countryId,
      this.postCode,
      this.image,
      this.about,
      this.createdAt,
      this.status,
      this.trashStatus,
      this.role,
      this.dept,
      this.jobTitle,
      this.duration,
      this.start,
      this.end,
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
      this.o1,
      this.o2,
      this.o3,
      this.o4,
      this.o5,
      this.o6,
      this.o7,
      this.o8,
      this.o9,
      this.o10,
      this.o11,
      this.o12,
      this.o13,
      this.o14,
      this.o15,
      this.o16,
      this.o17,
      this.o18,
      this.o19,
      this.o20,
      this.formId,
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
      this.fo30,
      this.fo31,
      this.fo32,
      this.fo33,
      this.fo34,
      this.fo35,
      this.fo36,
      this.fo37,
      this.fo38,
      this.fo39,
      this.fo40,
      this.cardNumber,
      this.cardMonth,
      this.cardYear,
      this.cardCvv,
      this.images,
      this.cardPc,
      this.formRecordId,
      this.formRecordData,
      this.isHr,
      this.code,
      this.timezone,
      this.sundayStart,
      this.sundayEnd,
      this.mondayStart,
      this.mondayEnd,
      this.tuesdayStart,
      this.tuesdayEnd,
      this.wednesdayStart,
      this.wednesdayEnd,
      this.thursdayStart,
      this.thursdayEnd,
      this.fridayStart,
      this.fridayEnd,
      this.saturdayStart,
      this.saturdayEnd});

  EmployeeRecords.fromJson(Map<String, dynamic> json) {
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
    address = json['address'];
    cityId = json['city_id'];
    stateId = json['state_id'];
    countryId = json['country_id'];
    postCode = json['post_code'];
    image = json['image'];
    about = json['about'];
    createdAt = json['created_at'];
    status = json['status'];
    trashStatus = json['trash_status'];
    role = json['role'];
    dept = json['dept'];
    jobTitle = json['job_title'];
    duration = json['duration'];
    start = json['start'];
    end = json['end'];
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
    o1 = json['o1'];
    o2 = json['o2'];
    o3 = json['o3'];
    o4 = json['o4'];
    o5 = json['o5'];
    o6 = json['o6'];
    o7 = json['o7'];
    o8 = json['o8'];
    o9 = json['o9'];
    o10 = json['o10'];
    o11 = json['o11'];
    o12 = json['o12'];
    o13 = json['o13'];
    o14 = json['o14'];
    o15 = json['o15'];
    o16 = json['o16'];
    o17 = json['o17'];
    o18 = json['o18'];
    o19 = json['o19'];
    o20 = json['o20'];
    formId = json['form_id'];
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
    fo30 = json['fo30'];
    fo31 = json['fo31'];
    fo32 = json['fo32'];
    fo33 = json['fo33'];
    fo34 = json['fo34'];
    fo35 = json['fo35'];
    fo36 = json['fo36'];
    fo37 = json['fo37'];
    fo38 = json['fo38'];
    fo39 = json['fo39'];
    fo40 = json['fo40'];
    cardNumber = json['card_number'];
    cardMonth = json['card_month'];
    cardYear = json['card_year'];
    cardCvv = json['card_cvv'];
    images = json['images'];
    cardPc = json['card_pc'];
    formRecordId = json['form_record_id'];
    formRecordData = json['form_record_data'];
    isHr = json['is_hr'];
    code = json['code'];
    timezone = json['timezone'];
    sundayStart = json['sunday_start'];
    sundayEnd = json['sunday_end'];
    mondayStart = json['monday_start'];
    mondayEnd = json['monday_end'];
    tuesdayStart = json['tuesday_start'];
    tuesdayEnd = json['tuesday_end'];
    wednesdayStart = json['wednesday_start'];
    wednesdayEnd = json['wednesday_end'];
    thursdayStart = json['thursday_start'];
    thursdayEnd = json['thursday_end'];
    fridayStart = json['friday_start'];
    fridayEnd = json['friday_end'];
    saturdayStart = json['saturday_start'];
    saturdayEnd = json['saturday_end'];
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
    data['address'] = this.address;
    data['city_id'] = this.cityId;
    data['state_id'] = this.stateId;
    data['country_id'] = this.countryId;
    data['post_code'] = this.postCode;
    data['image'] = this.image;
    data['about'] = this.about;
    data['created_at'] = this.createdAt;
    data['status'] = this.status;
    data['trash_status'] = this.trashStatus;
    data['role'] = this.role;
    data['dept'] = this.dept;
    data['job_title'] = this.jobTitle;
    data['duration'] = this.duration;
    data['start'] = this.start;
    data['end'] = this.end;
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
    data['o1'] = this.o1;
    data['o2'] = this.o2;
    data['o3'] = this.o3;
    data['o4'] = this.o4;
    data['o5'] = this.o5;
    data['o6'] = this.o6;
    data['o7'] = this.o7;
    data['o8'] = this.o8;
    data['o9'] = this.o9;
    data['o10'] = this.o10;
    data['o11'] = this.o11;
    data['o12'] = this.o12;
    data['o13'] = this.o13;
    data['o14'] = this.o14;
    data['o15'] = this.o15;
    data['o16'] = this.o16;
    data['o17'] = this.o17;
    data['o18'] = this.o18;
    data['o19'] = this.o19;
    data['o20'] = this.o20;
    data['form_id'] = this.formId;
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
    data['fo30'] = this.fo30;
    data['fo31'] = this.fo31;
    data['fo32'] = this.fo32;
    data['fo33'] = this.fo33;
    data['fo34'] = this.fo34;
    data['fo35'] = this.fo35;
    data['fo36'] = this.fo36;
    data['fo37'] = this.fo37;
    data['fo38'] = this.fo38;
    data['fo39'] = this.fo39;
    data['fo40'] = this.fo40;
    data['card_number'] = this.cardNumber;
    data['card_month'] = this.cardMonth;
    data['card_year'] = this.cardYear;
    data['card_cvv'] = this.cardCvv;
    data['images'] = this.images;
    data['card_pc'] = this.cardPc;
    data['form_record_id'] = this.formRecordId;
    data['form_record_data'] = this.formRecordData;
    data['is_hr'] = this.isHr;
    data['code'] = this.code;
    data['timezone'] = this.timezone;
    data['sunday_start'] = this.sundayStart;
    data['sunday_end'] = this.sundayEnd;
    data['monday_start'] = this.mondayStart;
    data['monday_end'] = this.mondayEnd;
    data['tuesday_start'] = this.tuesdayStart;
    data['tuesday_end'] = this.tuesdayEnd;
    data['wednesday_start'] = this.wednesdayStart;
    data['wednesday_end'] = this.wednesdayEnd;
    data['thursday_start'] = this.thursdayStart;
    data['thursday_end'] = this.thursdayEnd;
    data['friday_start'] = this.fridayStart;
    data['friday_end'] = this.fridayEnd;
    data['saturday_start'] = this.saturdayStart;
    data['saturday_end'] = this.saturdayEnd;
    return data;
  }
}
