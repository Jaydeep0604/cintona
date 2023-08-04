import 'dart:convert';

import "package:http/http.dart" as http;

class UserClient {
  static final UserClient instance = UserClient._internal();
  // EncodeDecode encodeDecode = EncodeDecode();
  factory UserClient() {
    return instance;
  }

  UserClient._internal();
  // Future<http.Response> doGet(String url, {Map<String, String>? header}) async {
  //   Box<UserAccessData>? userData = await ksHiveStore.isExistUserBox();

  //   if (userData == null) {
  //     return http.Response("{'msg':'No user found'}", 404);
  //   }
  //   Map<String, String> head = {
  //     "content-type": "application/json",
  //     "Authorization": "Bearer ${userData.values.last.accessToken}"
  //   };
  //   if (header != null) {
  //     head.addAll(header);
  //   }

  //   try {
  //     http.Response response = await http.get(Uri.parse(url), headers: head);
  //     print("${response.body}");
  //     dynamic jsonData = jsonDecode(response.body);
  //     if (response.statusCode != 403 && response.statusCode != 401) {
  //       return response;
  //     } else {
  //       throw UnAuthorizedException(
  //           message: jsonData['message'] ?? "Session Expired..!".toString(),
  //           statusCode: response.statusCode);
  //     }
  //   } on UnAuthorizedException catch (e) {
  //     ksHiveStore.clossSession();
  //     return http.Response('{"message":"${e.message}"}', e.statusCode);
  //   }
  // }
  Future<http.Response> doPost(String url, Map<String, dynamic> body,
      {Map<String, String>? header}) {
    Map<String, String> head = {"content-type": "application/json"};
    if (header != null) {
      head.addAll(header);
    }
    // String data = (json.encode(body));
    return http.post(Uri.parse(url),
        body: jsonEncode({"user": body}), headers: head);
  }
}
