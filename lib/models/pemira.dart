part of 'models.dart';

class Pemira {
  int id, idOrmawa;
  String nama;
  Ormawa ormawa;
  String foto;
  String deskripsi;
  String tanggal;
  String waktuMulai;
  String waktuSelesai;

  Pemira(
      {this.id,
      this.idOrmawa,
      this.nama,
      this.ormawa,
      this.foto,
      this.deskripsi,
      this.tanggal,
      this.waktuMulai,
      this.waktuSelesai});

  Pemira.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idOrmawa = json['id_ormawa'];
    nama = json['nama'];
    ormawa = json['ormawa'] != null ? Ormawa.fromJson(json['ormawa']) : null;
    foto = json['foto'];
    deskripsi = json['deskripsi'];
    tanggal = json['tanggal'];
    waktuMulai = json['waktu_mulai'];
    waktuSelesai = json['waktu_selesai'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_ormawa'] = this.idOrmawa;
    data['nama'] = this.nama;
    if (this.ormawa != null) {
      data['ormawa'] = this.ormawa.toJson();
    }
    data['foto'] = this.foto;
    data['deskripsi'] = this.deskripsi;
    data['tanggal'] = this.tanggal;
    data['waktu_mulai'] = this.waktuMulai;
    data['waktu_selesai'] = this.waktuSelesai;
    return data;
  }
}
