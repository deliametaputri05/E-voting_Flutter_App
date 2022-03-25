part of 'services.dart';

class CalonWakilServices {
  static Future<ApiReturnValue<List<CalonWakil>>> getCalonWakil() async {
    final response = await http.get(baseURL + "calonWakil");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<CalonWakil>>(
        value: List<CalonWakil>.from(
            json.decode(response.body).map((x) => CalonWakil.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<CalonWakil>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
