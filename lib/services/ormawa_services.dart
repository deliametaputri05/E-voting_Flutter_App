part of 'services.dart';

class OrmawaServices {
  static Future<ApiReturnValue<List<Ormawa>>> getOrmawa() async {
    String url = baseURL + 'ormawa';

    var response = await http.get(url);

    if (response.statusCode != 200) {
      return ApiReturnValue(message: 'Please try again');
    }

    var data = jsonDecode(response.body);

    List<Ormawa> ormawa =
        (data['data'] as List).map((e) => Ormawa.fromJson(e)).toList();

    return ApiReturnValue(value: ormawa);
  }
}
