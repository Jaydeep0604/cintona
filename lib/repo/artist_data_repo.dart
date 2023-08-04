// import 'dart:convert';

// import 'package:cintona/config/constent.dart';
// import 'package:cintona/model/news_model.dart';
// import "package:http/http.dart" as http;

// abstract class ArtistsDataRepo {
//   Future<dynamic> getArtistDataModel(int id);
// }

// class ArtistDataImpl extends ArtistsDataRepo {
//   // EncodeDecode encodeDecode = EncodeDecode();

//   @override
//   Future<dynamic> getArtistDataModel(int id) async {
//     String url = ApiConstant.ALL_NEWS + "$id";
//     http.Response response = await UserClient.instance.doGet(url);

//     print("hello data: ${response.statusCode}");

//    dynamic jsonData = response.body;
//     if (response.statusCode == 200) {
//       if (jsonData['success_code'] == 200) {
//         dynamic data = jsonDecode((jsonData['data']));

//         Articles articles = Articles.fromJson(data);
//         return articles;
//       } else {
//         throw Exception( jsonDecode(response.body)['message']);
//       }
//     } else {
//       throw Exception(jsonDecode(response.body)['message']);
//     }
//   }
// }
