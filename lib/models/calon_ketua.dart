part of 'models.dart';

class CalonKetua {
  int id, nim, idJurusan, idOrmawa, angkatan;
  Jurusan jurusan;
  String nama, foto, kelas, alamat, moto;

  CalonKetua({
    this.id,
    this.nim,
    this.idJurusan,
    this.idOrmawa,
    this.angkatan,
    this.nama,
    this.foto,
    this.kelas,
    this.alamat,
    this.moto,
    this.jurusan,
  });

  CalonKetua.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nim = json['nim'];
    idJurusan = json['id_jurusan'];
    idOrmawa = json['id_ormawa'];
    angkatan = json['angkatan'];
    nama = json['nama'];
    foto = json['foto'];
    kelas = json['kelas'];
    alamat = json['alamat'];
    moto = json['moto'];
    jurusan =
        json['jurusan'] != null ? new Jurusan.fromJson(json['jurusan']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nim'] = this.nim;
    data['id_jurusan'] = this.idJurusan;
    data['id_ormawa'] = this.idOrmawa;
    data['angkatan'] = this.angkatan;
    data['nama'] = this.nama;
    data['foto'] = this.foto;
    data['kelas'] = this.kelas;
    data['alamat'] = this.alamat;
    data['moto'] = this.moto;
    if (this.jurusan != null) {
      data['jurusan'] = this.jurusan.toJson();
    }
    return data;
  }
}
