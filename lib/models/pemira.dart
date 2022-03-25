part of 'models.dart';

class Pemira {
  int id;
  int nama;
  String foto;
  String Deskripsi;
  DateTime tanggal;
  DateTime waktuMulai;
  DateTime waktuSelesai;

  Pemira({
    this.id,
    this.nama,
    this.foto,
    this.Deskripsi,
    this.tanggal,
    this.waktuMulai,
    this.waktuSelesai,
  });

  Pemira.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    foto = json['foto'];
    Deskripsi = json['Deskripsi'];
    tanggal = DateTime.parse(json['tanggal']);
    waktuMulai = DateTime.parse(json['waktu_mulai']);
    waktuSelesai = DateTime.parse(json['waktu_selesai']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['foto'] = this.foto;
    data['Deskripsi'] = this.Deskripsi;
    data['tanggal'] = this.tanggal.toString();
    data['waktu_mulai'] = this.waktuMulai.toString();
    data['waktu_selesai'] = this.waktuSelesai.toString();
    return data;
  }
}
