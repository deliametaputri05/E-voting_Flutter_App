part of 'services.dart';

class KandidatServices {
  static Future<ApiReturnValue<List<Kandidat>>> getKandidat() async {
    final response = await http.get(baseURL + "kandidat");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<Kandidat>>(
        value: List<Kandidat>.from(
            json.decode(response.body).map((x) => Kandidat.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<Kandidat>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
