part of 'services.dart';

class MahasiswaServices {
  static Future<ApiReturnValue<List<Mahasiswa>>> getMahasiswa() async {
    final response = await http.get(baseURL + "mahasiswa");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<Mahasiswa>>(
        value: List<Mahasiswa>.from(
            json.decode(response.body).map((x) => Mahasiswa.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<Mahasiswa>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
