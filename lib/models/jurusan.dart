part of 'models.dart';

class Jurusan {
  int id;
  String nama;
  String jenjang;

  Jurusan({
    this.id,
    this.nama,
    this.jenjang,
  });

  Jurusan.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    jenjang = json['jenjang'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['jenjang'] = this.jenjang;
    return data;
  }
}
