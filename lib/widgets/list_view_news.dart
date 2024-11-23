import 'package:api/models/articles_model.dart';
import 'package:api/widgets/news.dart';
import 'package:flutter/material.dart';

class ListViewNews extends StatelessWidget {
 final List<ArticlesModel> articles ;
   ListViewNews({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return   SliverList(
      delegate:SliverChildBuilderDelegate(
        childCount: articles.length,
        (context,index){
        return  NewsTile(articlesModel: articles[index]);
      }),
       );
  }
}



 
 