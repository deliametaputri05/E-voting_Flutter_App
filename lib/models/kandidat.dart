part of 'models.dart';

class Kandidat extends Equatable {
  final int id, idClnKetua, idClnWakil, idOrmawa, idPemira, noUrut;
  final String foto, visi, misi;
  final Pemira pemira;
  final User user;
  final Ormawa ormawa;
  final CalonKetua clnKetua;
  final CalonWakil clnWakil;

  Kandidat(
      {this.id,
      this.idClnKetua,
      this.idClnWakil,
      this.idOrmawa,
      this.idPemira,
      this.noUrut,
      this.foto,
      this.visi,
      this.misi,
      this.pemira,
      this.user,
      this.ormawa,
      this.clnKetua,
      this.clnWakil});

  factory Kandidat.fromJson(Map<String, dynamic> json) {
    return Kandidat(
      id: json['id'],
      idClnKetua: json['id_clnKetua'],
      idClnWakil: json['id_clnWakil'],
      idOrmawa: json['id_ormawa'],
      idPemira: json['id_pemira'],
      pemira: (json['pemira'] != null) ? Pemira.fromJson(json['pemira']) : null,
      user: (json['user'] != null) ? User.fromJson(json['user']) : null,
      clnKetua: (json['clnKetua'] != null)
          ? CalonKetua.fromJson(json['clnKetua'])
          : null,
      clnWakil: (json['clnWakil'] != null)
          ? CalonWakil.fromJson(json['clnWakil'])
          : null,
      ormawa: (json['ormawa'] != null) ? Ormawa.fromJson(json['ormawa']) : null,
      noUrut: json['no_urut'],
      foto: json['foto'],
      visi: json['visi'],
      misi: json['misi'],
    );
  }

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['id_clnKetua'] = this.idClnKetua;
  //   data['id_clnWakil'] = this.idClnWakil;
  //   data['id_ormawa'] = this.idOrmawa;
  //   data['id_pemira'] = this.idPemira;
  //   data['no_urut'] = this.noUrut;
  //   data['foto'] = this.foto;
  //   data['visi'] = this.visi;
  //   data['misi'] = this.misi;
  //   return data;
  // }

  @override
  // TODO: implement props
  List<Object> get props => [
        id,
        idClnKetua,
        idClnWakil,
        idOrmawa,
        idPemira,
        noUrut,
        foto,
        visi,
        misi
      ];
}
