import 'package:flutter/material.dart';
import 'package:meals/dummy_data.dart';
import 'package:meals/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const routeName = 'CategoryMealScreen';

//
//  final String title;
//  final String id;

  //CategoryMealScreen({this.title,this.id});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final title = routeArgs['title'];
    final id = routeArgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meals) {
      return meals.categories.contains(id);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              title : categoryMeals[index].title,
              //complexity: categoryMeals[index].complexity,
            );
          },
          itemCount: categoryMeals.length,
        ));
  }
}
