import 'package:api/models/articles_model.dart';
import 'package:dio/dio.dart';

class NewsServices 
{
   final Dio dio ;
   NewsServices(this.dio);
// اي حاجه فيها  asyuc لازم تستخدم معها future  
 Future <List<ArticlesModel> > getNews({required String catgary})async
  {
    try {
  var response =  await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=b988885746db4d4fb34f4098ff09e0d8&c=$catgary");
  
  // ignore: unused_local_variable
  //شكل القائمه االي بجيب منها البيانات
  Map<String,dynamic> jsonData = response.data;
  // ignore: unused_local_variable
  //عرض البيانات
  List<dynamic> articles = jsonData["articles"];
  // ignore: unused_local_variable
  // ده المودل اللي انا انشاءته
  List<ArticlesModel> articlesList = [] ;
  // هنا انا بقوله ادخل علي كل الاخبار مثلا وهات منها حاجه معينه
  for (var article in articles) {
  ArticlesModel articlesModel =  ArticlesModel(
  
      image: article["urlToImage"],
       subTitle: article["description"],
        title: article["title"],
        );
        // هنا بقوله بقا ضيف المودل دي بقا في القائمه اللي انا عملتها
        articlesList.add(articlesModel);
  }
  
  return articlesList;
}  catch (e) {
  return [];
}
  }
}