import 'package:api/widgets/news_list_view_builer.dart';
import 'package:flutter/material.dart';

class CatgaryView extends StatelessWidget {
  const CatgaryView({super.key, required this.catgary1});
  final String catgary1 ;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBulider(catgary: catgary1),
        ],
      ),
    );
  }
}