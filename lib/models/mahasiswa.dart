part of 'models.dart';

class Mahasiswa {
  int id, idJurusan, nim, angkatan;
  String nama, kelas, foto;
  DateTime waktuMemilih;
  int sudahVote;

  Mahasiswa({
    this.id,
    this.idJurusan,
    this.nim,
    this.angkatan,
    this.nama,
    this.kelas,
    this.foto,
    this.waktuMemilih,
    this.sudahVote,
  });

  Mahasiswa.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idJurusan = json['id_jurusan'];
    nim = json['nim'];
    angkatan = json['angkatan'];
    nama = json['nama'];
    kelas = json['kelas'];
    foto = json['foto'];
    waktuMemilih = json['waktu_memilih'] != null
        ? DateTime.parse(json['waktu_memilih'])
        : null;
    sudahVote = json['sudah_vote'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_jurusan'] = this.idJurusan;
    data['nim'] = this.nim;
    data['angkatan'] = this.angkatan;
    data['nama'] = this.nama;
    data['kelas'] = this.kelas;
    data['foto'] = this.foto;
    data['waktu_memilih'] =
        this.waktuMemilih != null ? this.waktuMemilih.toIso8601String() : null;
    data['sudah_vote'] = this.sudahVote;
    return data;
  }
}
