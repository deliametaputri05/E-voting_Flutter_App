part of 'services.dart';

class KandidatServices {
  static Future<ApiReturnValue<List<Kandidat>>> getKandidat(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'kandidats/{id_pemira?}';

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    log('data: $data');

    List<Kandidat> kandidat =
        (data['data'] as List).map((e) => Kandidat.fromJson(e)).toList();

    return ApiReturnValue(value: kandidat);
  }
}
