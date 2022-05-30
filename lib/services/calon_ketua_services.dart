part of 'services.dart';

class CalonKetuaServices {
  static Future<ApiReturnValue<List<CalonKetua>>> getCalonKetua(
      {http.Client client}) async {
    client ??= http.Client();

    String url = baseURL + 'calon_ketua';

    var response = await client.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    List<CalonKetua> calonKetua =
        (data['data'] as List).map((e) => CalonKetua.fromJson(e)).toList();

    return ApiReturnValue(value: calonKetua);
  }
}
