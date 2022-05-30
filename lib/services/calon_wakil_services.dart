part of 'services.dart';

class CalonWakilServices {
  static Future<ApiReturnValue<List<CalonWakil>>> getCalonWakil(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'calon_wakil';

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    List<CalonWakil> calonWakil =
        (data['data'] as List).map((e) => CalonWakil.fromJson(e)).toList();

    return ApiReturnValue(value: calonWakil);
  }
}
