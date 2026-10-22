// import 'package:flutter/material.dart';
// import 'package:news_app/widgets/custom_app_bar.dart';
// import 'package:news_app/widgets/list_view_builder.dart';

// class CategoryView extends StatelessWidget {
//   const CategoryView({super.key, required this.category});
//   final String category;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: CustomAppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: CustomScrollView(
//           slivers: [NewsListBuilder(typeOfNews: category)],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/widgets/list_view_builder.dart';
import 'package:news_app/widgets/custom_app_bar.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key, required this.category});
  final String category;

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  Key refreshKey = UniqueKey();

  Future<void> _refreshData() async {
    setState(() {
      refreshKey = UniqueKey();
    });

    await Future.delayed(const Duration(seconds: 1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        color: Colors.blue,
        child: CustomScrollView(
          slivers: [
            NewsListBuilder(key: refreshKey, typeOfNews: widget.category),
          ],
        ),
      ),
    );
  }
}
