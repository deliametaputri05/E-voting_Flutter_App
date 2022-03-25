part of 'services.dart';

class VoteServices {
  static Future<ApiReturnValue<List<Vote>>> getVote() async {
    final response = await http.get(baseURL + "vote");
    if (response.statusCode == 200) {
      return ApiReturnValue<List<Vote>>(
        value: List<Vote>.from(
            json.decode(response.body).map((x) => Vote.fromJson(x))),
        message: "Success",
      );
    } else {
      return ApiReturnValue<List<Vote>>(
        value: null,
        message: "Failed",
      );
    }
  }
}
