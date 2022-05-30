part of 'services.dart';

class PemiraServices {
  static Future<ApiReturnValue<List<Pemira>>> getPemira() async {
    String url = baseURL + 'pemira';

    var response = await http.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    List<Pemira> pemira =
        (data['data'] as List).map((e) => Pemira.fromJson(e)).toList();

    log('data: $data');

    return ApiReturnValue(value: pemira);
  }
}
