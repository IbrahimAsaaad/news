import 'package:api/models/cat_model.dart';
import 'package:api/widgets/catgary.dart';
import 'package:flutter/material.dart';

class ListViewCat extends StatelessWidget {
   ListViewCat({
    super.key, 
  });
// ignore: non_constant_identifier_names
List<CatModel> Categories = 
[
  CatModel(image: "assets/images/one.jpg", catgaryName: "Business"),
   CatModel(image: "assets/images/two.jpg", catgaryName: "Health"),
   CatModel(image: "assets/images/six.jpg", catgaryName: "Sports"),
   CatModel(image: "assets/images/three.jpg", catgaryName: "Entertainment"),
   CatModel(image: "assets/images/four.jpg", catgaryName: "Science"),
   CatModel(image: "assets/images/five.jpg", catgaryName: "Technology "),
   

];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context,index){
          return  CatgaryCard(
            catgary: Categories[index],
            );
        },
        ),
    );
  }
}