
import 'package:api/models/cat_model.dart';
import 'package:api/views/catgary_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CatgaryCard extends StatelessWidget {
   CatgaryCard({super.key, required this.catgary,});
   
final CatModel catgary ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.of(context).push(MaterialPageRoute(builder: (_)
        {
          return  CatgaryView(
            catgary1:catgary.catgaryName ,
           );
        }),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16,left: 7),
        child: Container(
          width: 200,
          height: 100,
          decoration:  BoxDecoration(
            image:  DecorationImage(image: AssetImage(catgary.image),fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(20),
          ),
          child:   Center(
            child:  Text(catgary.catgaryName,style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.white
            ),),
          ),
        ),
      ),
    );
  }
}