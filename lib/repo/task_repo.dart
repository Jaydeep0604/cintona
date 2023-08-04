import 'dart:convert';

import 'package:cintona/config/constent.dart';
import 'package:cintona/model/task_model.dart';
import 'package:cintona/services/http_client.dart';
import "package:http/http.dart" as http;

abstract class TaskRepo {
  // Future<dynamic> register(MessagePostModel authModel);
  Future<dynamic> taskPost(TaskPostModel taskPostModel);
}

class TaskRepoImpl extends TaskRepo {
  @override
  // Future register(AuthModel authModel) async {
  //   Map<String, dynamic> body = authModel.toJson();
  //   http.Response response =
  //       await AuthClient.instance.doPost(ApiConstant.REGISTER, body);
  //   // dynamic jsonData = jsonDecode(response.body);
  //   // print("register $jsonData");
  //   if (response.statusCode == 200) {
  //     return body;
  //   } else if (response.statusCode == 422) {
  //     throw response.body;
  //   } else {
  //     throw response.body;
  //   }
  // }

  // @override
  // Future register(AuthModel authModel) async {
  //    Map<String, dynamic> body = authModel.toJson();
  //   print("$body");
  //   http.Response response =
  //       await AuthClient.instance.doPost(ApiConstant.REGISTER,body);
  //   dynamic jsonData = jsonDecode(response.body);
  //   print("register $jsonData");
  //   if (response.statusCode == 200) {
  //     // if (jsonData['success_code'] == 200 && jsonData['success'] == true) {
  //       return jsonData;
  //     // } else {
  //     //   throw Exception(jsonData['message']);
  //     // }
  //   }
  //   else if(response.statusCode==422){
  //     throw "$body";
  //   }
  //   else {
  //     throw Exception(jsonData['message']);
  //   }
  // }

  @override
  Future taskPost(TaskPostModel taskPostModel) async {
    // Map<String, dynamic> body = taskPostModel.toJson();

    // http.Response response =
    //     await UserClient.instance.doPost(ApiConstant.Task, body);
    // // print(body);
    // print(response.body);
    // if (response.statusCode == 200) {
    //   dynamic jsonData = jsonDecode(response.body);
    //   return jsonData;
    // } else if (response.statusCode == 403) {
    //   throw "Email or password is invalid";
    // } else {
    //   throw response.body;
    // }
  }
}
