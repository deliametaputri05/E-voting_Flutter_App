part of 'services.dart';

class PemiraServices {
  static Future<ApiReturnValue<List<Pemira>>> getPemira() async {
    final response = await http.get(baseURL + "pemira");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<Pemira>>(
        value: List<Pemira>.from(
            json.decode(response.body).map((x) => Pemira.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<Pemira>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
