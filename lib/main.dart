import 'package:api/services/news_services.dart';
import 'package:api/views/home_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';


void main()
{
 
  runApp(const NewsApp());
}
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}