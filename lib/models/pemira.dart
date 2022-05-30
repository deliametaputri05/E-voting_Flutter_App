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
    return {
      'id': id,
      'id_ormawa': idOrmawa,
      'nama': nama,
      'ormawa': ormawa,
      'foto': foto,
      'deskripsi': deskripsi,
      'tanggal': tanggal,
      'waktu_mulai': waktuMulai,
      'waktu_selesai': waktuSelesai
    };
  }
}
