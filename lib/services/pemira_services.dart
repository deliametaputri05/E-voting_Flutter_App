part of 'services.dart';

class PemiraServices {
  // static Future<ApiReturnValue<List<Pemira>>> getPemira(
  //     {http.Client client}) async {
  //   client ??= http.Client();
  //   String url = baseURL + 'pemira';

  //   var response = await client.get(url);

  //   if (response.statusCode != 200) {
  //     return ApiReturnValue(message: 'Please try again');
  //   }

  //   var data = jsonDecode(response.body);
  //   print(response.body);

  //   List<Pemira> value =
  //       (data['data'] as List).map((e) => Pemira.fromJson(e)).toList();

  //   log('data: $data');

  //   return ApiReturnValue(value: value);
  // }

  static Future<ApiReturnValue<List<Pemira>>> getPemira() async {
    String url = baseURL + 'pemira';

    var response = await http.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);
    print(response.body);

    List<Pemira> value =
        (data['data'] as List).map((e) => Pemira.fromJson(e)).toList();

    log('data: $data');

    return ApiReturnValue(value: value);
  }
}
