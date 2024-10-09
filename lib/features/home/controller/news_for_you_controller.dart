import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:news_app/features/home/model/news_for_you_model.dart';

class NewsForYouController extends GetxController {
  RxList<Articles> newsdetails = <Articles>[].obs;
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getNewsForYou();
  }

  void getNewsForYou() async {
    var baseurl =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=178b881d16e84ce4b2931a8f10743a33";
    try {
      var response = await http.get(Uri.parse(baseurl));
      print(response.body);

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        print(data);
        var getNews = data["articles"];
        for (var getNewsdata in getNews) {
          newsdetails.add(Articles.fromJson(getNewsdata));
        }
      }
    } catch (e) {
      print("Exception occured:${e}");
    }
  }
}
