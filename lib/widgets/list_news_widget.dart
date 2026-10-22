
import 'package:flutter/material.dart';
import 'package:news_app/models/artical_model.dart';


import 'package:news_app/widgets/news_tile.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key, required this.artical});

 final List<ArticalModel> artical ;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: artical.length, (
        context,
        index,
      ) {
        return NewsTile(articalModel: artical[index]);
      }),
    );
  }
}
