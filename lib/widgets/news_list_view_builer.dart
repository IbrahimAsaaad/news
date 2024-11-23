
import 'package:api/models/articles_model.dart';
import 'package:api/services/news_services.dart';
import 'package:api/widgets/list_view_news.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



class NewsListViewBulider extends StatefulWidget {
  const NewsListViewBulider({super.key, required this.catgary});

  final String catgary ;

  @override
  State<NewsListViewBulider> createState() => _NewsListViewBuliderState();
}

class _NewsListViewBuliderState extends State<NewsListViewBulider> {
  var future;
  @override
  void initState() {
    super.initState();
  future =  NewsServices(Dio()).getNews(catgary: widget.catgary);
    
  }
  // List<ArticlesModel> articles =[];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
      future: future,
       // ignore: non_constant_identifier_names
       builder: (context, Snapshot)
       {
        if (Snapshot.hasData) {
  return ListViewNews(
    articles: Snapshot.data!,
  );
}else if (Snapshot.hasError)
{
  return  const SliverToBoxAdapter(child: Text("oops There was an error try later "),);
} else
{
  return  const SliverToBoxAdapter(child: Center(child:  CircularProgressIndicator(),),);
}
 

 });
  }
}