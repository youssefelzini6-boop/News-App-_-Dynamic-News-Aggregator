import 'package:dio/dio.dart';
import 'package:news_app/models/artical_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices({required this.dio});

  Future<List<ArticalModel>> getTopHeadLines({required String category}) async {
    try {
      Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=383b4f31a195452ab6fa770541099490',
      );
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticalModel> articalList = [];
      for (var article in articles) {
        ArticalModel articalModel = ArticalModel.fromjson(article);
        articalList.add(articalModel);
      }
      articalList.shuffle();
      return articalList;
    } catch (e) {
      return [];
    }
  }
}
