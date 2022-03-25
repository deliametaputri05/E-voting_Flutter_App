part of 'services.dart';

class CalonKetuaServices {
  static Future<ApiReturnValue<List<CalonKetua>>> getCalonKetua() async {
    final response = await http.get(baseURL + "calonKetua");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<CalonKetua>>(
        value: List<CalonKetua>.from(
            json.decode(response.body).map((x) => CalonKetua.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<CalonKetua>>(
        value: null,
        message: "Failed",
      );
    }
  }

  static Future<ApiReturnValue<CalonKetua>> getCalonKetuaById(int id) async {
    final response = await http.get(baseURL + "calonKetua/$id");
    if (response.statusCode == 200) {
      return ApiReturnValue<CalonKetua>(
        value: CalonKetua.fromJson(json.decode(response.body)),
        message: "Success",
      );
    } else {
      return ApiReturnValue<CalonKetua>(
        value: null,
        message: "Failed",
      );
    }
  }
}
