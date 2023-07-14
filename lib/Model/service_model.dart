class ServiceData {
  int? status;
  String? type;
  String? message;
  List<ServiceRecords>? records;

  ServiceData({this.status, this.type, this.message, this.records});

  ServiceData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    type = json['type'];
    message = json['message'];
    if (json['records'] != null) {
      records = <ServiceRecords>[];
      json['records'].forEach((v) {
        records!.add(new ServiceRecords.fromJson(v));
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

class ServiceRecords {
  String? id;
  String? category;
  String? userId;
  String? vendor;
  String? name;
  String? detail;
  String? price;
  String? code;
  String? images;
  String? time;
  String? type;
  String? trashStatus;
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
  String? createdAt;
  String? avl;
  String? sort;

  ServiceRecords(
      {this.id,
      this.category,
      this.userId,
      this.vendor,
      this.name,
      this.detail,
      this.price,
      this.code,
      this.images,
      this.time,
      this.type,
      this.trashStatus,
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
      this.createdAt,
      this.avl,
      this.sort});

  ServiceRecords.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    category = json['category'];
    userId = json['user_id'];
    vendor = json['vendor'];
    name = json['name'];
    detail = json['detail'];
    price = json['price'];
    code = json['code'];
    images = json['images'];
    time = json['time'];
    type = json['type'];
    trashStatus = json['trash_status'];
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
    createdAt = json['created_at'];
    avl = json['avl'];
    sort = json['sort'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category'] = this.category;
    data['user_id'] = this.userId;
    data['vendor'] = this.vendor;
    data['name'] = this.name;
    data['detail'] = this.detail;
    data['price'] = this.price;
    data['code'] = this.code;
    data['images'] = this.images;
    data['time'] = this.time;
    data['type'] = this.type;
    data['trash_status'] = this.trashStatus;
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
    data['created_at'] = this.createdAt;
    data['avl'] = this.avl;
    data['sort'] = this.sort;
    return data;
  }
}
