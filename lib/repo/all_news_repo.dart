import 'dart:convert';

import 'package:cintona/config/constent.dart';
import 'package:cintona/model/entries_model.dart';
import 'package:cintona/model/news_model.dart';
import 'package:cintona/model/population_model.dart';
import 'package:http/http.dart' as http;

abstract class AllNewsRepo {
  Future<List<Articles>> getAllNewsData();
  Future<List<PopulationModel>> getPopulationData();
  // Future<List<Articles>> getPopulationData();
  Future<List<EntriesModel>> getEntriesData();
}

class AllNewsImpl extends AllNewsRepo {
  @override
  Future<List<Articles>> getAllNewsData() async {
    String url = ApiConstant.ALL_NEWS;
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        "content-type": "application/json",
        //"Authorization": "Bearer ${ApiConstant.TOKEN}"
      },
    );
    Map<String, dynamic> jsonData = json.decode(response.body);

    if (response.statusCode == 200) {
      List<dynamic> data = jsonData["articles"];
      List<Articles> s = List.from((data).map((e) => Articles.fromJson(e)));
      return s;
    } else {
      throw Exception();
    }
  }

  // @override
  // Future<List<Articles>> getPopulationData() async {
  //   String url = ApiConstant.ALL_NEWS;
  //   http.Response response = await http.get(
  //     Uri.parse(url),
  //     headers: {
  //       "content-type": "application/json",
  //       //"Authorization": "Bearer ${ApiConstant.TOKEN}"
  //     },
  //   );
  //   Map<String, dynamic> jsonData = json.decode(response.body);
  //   if (response.statusCode == 200) {
  //     List<dynamic> data = jsonData["articles"];
  //     List<Articles> s = List.from((data).map((e) => Articles.fromJson(e)));
  //     return s;
  //   } else {
  //     throw Exception();
  //   }
  // }
  @override
  Future<List<PopulationModel>> getPopulationData() async {
    String url = ApiConstant.Population;
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
        //"content-type": "application/json",
        //"Authorization": "Bearer ${ApiConstant.TOKEN}"
      },
    );
    Map<String, dynamic> jsonData = json.decode(response.body);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonData["data"];
      List<PopulationModel> s =
          List.from((data).map((e) => PopulationModel.fromJson(e)));
      return s;
    } else {
      throw Exception();
    }
  }

  @override
  Future<List<EntriesModel>> getEntriesData() async {
    String url = ApiConstant.Entries;
    http.Response response = await http.get(
      Uri.parse(url),
      headers: {
       // "content-type": "application/json",
        //"Authorization": "Bearer ${ApiConstant.TOKEN}"
      },
    );
    Map<String, dynamic> jsonData = json.decode(response.body);
    if (response.statusCode == 200) {
      List<dynamic> data = jsonData["entries"];
      List<EntriesModel> s =
          List.from((data).map((e) => EntriesModel.fromJson(e)));
      return s;
    } else {
      throw Exception();
    }
  }
}
