import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

final List<CategoryModel> categories = const [
  CategoryModel(nameImage: 'Business', images: 'assets/business.avif'),
  CategoryModel(nameImage: 'Sports', images: 'assets/sports.avif'),
  CategoryModel(nameImage: 'Entertainment', images: 'assets/entertaiment.avif'),
  CategoryModel(nameImage: 'Technology', images: 'assets/technology.jpeg'),
  CategoryModel(nameImage: 'Health', images: 'assets/health.avif'),
  CategoryModel(nameImage: 'Science', images: 'assets/science.avif'),
  CategoryModel(nameImage: 'General', images: 'assets/general.avif'),
];

class ListCategory extends StatelessWidget {
  const ListCategory({super.key, required this.categories});

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (contex, index) {
          return CategoryCard(category: categories[index]);
        },
      ),
    );
  }
}
