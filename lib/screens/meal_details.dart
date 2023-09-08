import 'package:flutter/material.dart';
import 'package:udemy_meals/model/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen({super.key, required this.meal});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pop('reza');

        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(meal.title),
        ),
        body: Image.network(
          meal.imageUrl,
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
