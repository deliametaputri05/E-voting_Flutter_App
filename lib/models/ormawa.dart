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
    return {
      'id': id,
      'nama': nama,
      'logo': logo,
    };
  }
}
