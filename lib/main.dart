import 'package:flutter/material.dart';
import 'package:meals/category_meals_screen.dart';
import 'package:meals/category_screen.dart';

void main() =>
    runApp(
      MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.pink,
              accentColor: Colors.amber,
              fontFamily: 'Raleway',
              textTheme: ThemeData
                  .light()
                  .textTheme
                  .copyWith(
                  body1: TextStyle(color: Colors.black),
                  body2: TextStyle(color: Colors.purple),
                  title:TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RobotoCondensed',
                  ))),

          initialRoute: '/',

      routes: {
            '/' : (context) => CategoryScreen(),
            CategoryMealScreen.routeName : (context) => CategoryMealScreen()
      },
      ),
    );

