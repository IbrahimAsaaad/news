import 'dart:developer';

import 'package:api/models/articles_model.dart';
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articlesModel});
  final ArticlesModel? articlesModel ;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(19),
            child: Image.network(articlesModel?.image??"https://gratisography.com/wp-content/uploads/2024/01/gratisography-covered-in-confetti-1170x780.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200,
            ),
            
          ),
          const SizedBox(
            height: 12,
          ),
           Text(articlesModel?.title??'',
           
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(),
            Text(
            articlesModel?.subTitle??"",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          maxLines: 3,
          overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}