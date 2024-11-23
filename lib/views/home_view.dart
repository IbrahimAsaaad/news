import 'package:api/models/articles_model.dart';
import 'package:api/services/news_services.dart';
import 'package:api/widgets/catgary.dart';
import 'package:api/widgets/catgary_listview.dart';
import 'package:api/widgets/list_view_news.dart';
import 'package:api/widgets/news.dart';
import 'package:api/widgets/news_list_view_builer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("News",
            style: TextStyle(
              color: Colors.black,
            ),
            ),
            Text("Colud",
            style: TextStyle(
              color: Colors.orange,
            ),
            ),
          ],
          ),
      ),
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(child: ListViewCat()),
          const SliverToBoxAdapter(child: SizedBox(height: 22),),
          const NewsListViewBulider(catgary: "general",),
        ],
      ),
    );
  }
}


