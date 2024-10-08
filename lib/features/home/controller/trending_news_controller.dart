import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/features/home/model/trending_news_model.dart';

class TrendingNewsController extends GetxController {
  RxList<Articles> articleListData = <Articles>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getTrendingNews();
  }

  void getTrendingNews() async {
    var baseurl =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=178b881d16e84ce4b2931a8f10743a33";
    try {
      var response = await http.get(Uri.parse(baseurl));
      print(response.body);
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        var articledata = data["articles"];
        print(articledata);
        for (var alldata in articledata) {
          articleListData.add(Articles.fromJson(alldata));
        }
        print(articledata);
      }
    } catch (e) {
      print("exception:$e");
    }
  }
}
