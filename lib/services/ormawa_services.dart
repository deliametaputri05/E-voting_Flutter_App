part of 'services.dart';

class OrmawaServices {
  static Future<ApiReturnValue<List<Ormawa>>> getOrmawa() async {
    final response = await http.get(baseURL + "ormawa");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<Ormawa>>(
        value: List<Ormawa>.from(
            json.decode(response.body).map((x) => Ormawa.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<Ormawa>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
