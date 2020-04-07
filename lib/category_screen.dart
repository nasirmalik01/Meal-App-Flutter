import 'package:flutter/material.dart';
import 'package:meals/category_item.dart';
import 'package:meals/dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Meals'
        ),
      ),
      body : GridView(
        padding: EdgeInsets.all(20.0),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 1.5 ,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10
        ),
        children: DUMMY_CATEGORIES.map((dummy){
              return CategoryItem(
                id: dummy.id,
                title: dummy.title,
                color: dummy.color);
            }).toList(),

      ),
    );
  }
}
