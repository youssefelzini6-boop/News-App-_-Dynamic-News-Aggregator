import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/circuler_loading.dart';
import 'package:news_app/widgets/error_massega.dart';
import 'package:news_app/widgets/list_news_widget.dart';

class NewsListBuilder extends StatefulWidget {
  const NewsListBuilder({super.key, required this.typeOfNews});
  final String typeOfNews;

  @override
  State<NewsListBuilder> createState() => _NewsListBuilderState();
}

class _NewsListBuilderState extends State<NewsListBuilder> {
  // ignore: strict_top_level_inference, prefer_typing_uninitialized_variables
  var future;

  @override
  void initState() {
    future = NewsServices(dio: Dio())
        .getTopHeadLines(category: widget.typeOfNews);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(artical: snapshot.data!);
        } else if (snapshot.hasError) {
          return ErrorMassega();
        } else {
          return CirculerLoadingWidget();
        }
      },
    );
  }
}
