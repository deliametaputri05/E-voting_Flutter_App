part of 'models.dart';

class Vote {
  int id, idPemira, idKandidat, jumlahSuara;
  String status;
  Pemira pemira;
  Kandidat kandidat;

  Vote(
      {this.id,
      this.idPemira,
      this.idKandidat,
      this.jumlahSuara,
      this.status,
      Kandidat pemira,
      User user});

  Vote.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idPemira = json['id_pemira'];
    idKandidat = json['id_kandidat'];
    jumlahSuara = json['jumlah_suara'];
    status = json['status'];
    pemira = (json['pemira'] != null) ? Pemira.fromJson(json['pemira']) : null;
    kandidat =
        (json['kandidat'] != null) ? Kandidat.fromJson(json['kandidat']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['id_pemira'] = this.idPemira;
    data['id_kandidat'] = this.idKandidat;
    data['jumlah_suara'] = this.jumlahSuara;
    data['status'] = this.status;
    return data;
  }
}
