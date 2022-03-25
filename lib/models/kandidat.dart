part of 'models.dart';

class Kandidat {
  int id, idClnKetua, idClnWakil, idOrmawa, idPemira, noUrut;
  String foto, visi, misi;

  Kandidat({
    this.id,
    this.idClnKetua,
    this.idClnWakil,
    this.idOrmawa,
    this.idPemira,
    this.noUrut,
    this.foto,
    this.visi,
    this.misi,
  });

  Kandidat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idClnKetua = json['id_clnKetua'];
    idClnWakil = json['id_clnWakil'];
    idOrmawa = json['id_ormawa'];
    idPemira = json['id_pemira'];
    noUrut = json['no_urut'];
    foto = json['foto'];
    visi = json['visi'];
    misi = json['misi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_clnKetua'] = this.idClnKetua;
    data['id_clnWakil'] = this.idClnWakil;
    data['id_ormawa'] = this.idOrmawa;
    data['id_pemira'] = this.idPemira;
    data['no_urut'] = this.noUrut;
    data['foto'] = this.foto;
    data['visi'] = this.visi;
    data['misi'] = this.misi;
    return data;
  }
}
