import 'package:flutter/material.dart';
import 'package:meals/category_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({this.title, this.color, this.id});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: InkWell(
        onTap: () {
//          Navigator.push(context, MaterialPageRoute(
//              builder: (context) {
//                return CategoryMealScreen(
//                  title: title,
//                  id: id,
//                );
//              }
//          ));
          Navigator.pushNamed(context, CategoryMealScreen.routeName,
              arguments: {'id': id, 'title': title,});
        },
        borderRadius: BorderRadius.circular(25.0),
        splashColor: Theme
            .of(context)
            .primaryColor,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [color.withOpacity(0.7), color],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: Text(
              title,
              style: Theme
                  .of(context)
                  .textTheme
                  .title,
            ),
          ),
        ),
      ),
    );
  }
}
