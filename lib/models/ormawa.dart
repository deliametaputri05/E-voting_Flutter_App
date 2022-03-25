part of 'models.dart';

class Ormawa {
  int id;
  String nama;
  String logo;

  Ormawa({
    this.id,
    this.nama,
    this.logo,
  });

  Ormawa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    logo = json['logo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['logo'] = this.logo;
    return data;
  }
}
