// import 'package:flutter/material.dart';
// import 'package:news_app/widgets/custom_app_bar.dart';
// import 'package:news_app/widgets/list_category.dart';
// import 'package:news_app/widgets/list_view_builder.dart';

// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: CustomAppBar(),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: CustomScrollView(
//           physics: BouncingScrollPhysics(),
//           slivers: [
//             SliverToBoxAdapter(child: ListCategory(categories: categories)),
//             SliverToBoxAdapter(child: SizedBox(height: 16)),
//             // SliverToBoxAdapter(child: ListNewsTile()),
//             NewsListBuilder(typeOfNews: 'general',),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:news_app/widgets/custom_app_bar.dart';
import 'package:news_app/widgets/list_category.dart';
import 'package:news_app/widgets/list_view_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        child: RefreshIndicator(
          onRefresh: _refreshData,
          color: Colors.blue,
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(child: ListCategory(categories: categories)),
              const SliverToBoxAdapter(child: SizedBox(height: 16)),

              NewsListBuilder(key: refreshKey, typeOfNews: 'general'),
            ],
          ),
        ),
      ),
    );
  }
}
