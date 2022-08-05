class UserModel {
  String? username;
  String? email;
  String? phone;
  String? createdAt;
  String? updatedAt;
  ACL? aCL;
  String? sessionToken;
  String? objectId;

  UserModel(
      {this.username,
      this.email,
      this.phone,
      this.createdAt,
      this.updatedAt,
      this.aCL,
      this.sessionToken,
      this.objectId});

  UserModel.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    aCL = json['ACL'] != null ? new ACL.fromJson(json['ACL']) : null;
    sessionToken = json['sessionToken'];
    objectId = json['objectId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    if (this.aCL != null) {
      data['ACL'] = this.aCL!.toJson();
    }
    data['sessionToken'] = this.sessionToken;
    data['objectId'] = this.objectId;
    return data;
  }
}

class ACL {
  RoleCoreservices? roleCoreservices;
  RoleCoreservices? qgjEG9gOFAv504ffcYz8i5FM;

  ACL({this.roleCoreservices, this.qgjEG9gOFAv504ffcYz8i5FM});

  ACL.fromJson(Map<String, dynamic> json) {
    roleCoreservices = json['role:coreservices'] != null
        ? new RoleCoreservices.fromJson(json['role:coreservices'])
        : null;
    qgjEG9gOFAv504ffcYz8i5FM = json['QgjEG9gOFAv504ffcYz8i5FM'] != null
        ? new RoleCoreservices.fromJson(json['QgjEG9gOFAv504ffcYz8i5FM'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.roleCoreservices != null) {
      data['role:coreservices'] = this.roleCoreservices!.toJson();
    }
    if (this.qgjEG9gOFAv504ffcYz8i5FM != null) {
      data['QgjEG9gOFAv504ffcYz8i5FM'] =
          this.qgjEG9gOFAv504ffcYz8i5FM!.toJson();
    }
    return data;
  }
}

class RoleCoreservices {
  bool? read;
  bool? write;

  RoleCoreservices({this.read, this.write});

  RoleCoreservices.fromJson(Map<String, dynamic> json) {
    read = json['read'];
    write = json['write'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['read'] = this.read;
    data['write'] = this.write;
    return data;
  }
}
