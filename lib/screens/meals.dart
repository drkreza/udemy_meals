import 'package:flutter/material.dart';
import 'package:udemy_meals/model/meal.dart';
import 'package:udemy_meals/screens/meal_details.dart';
import 'package:udemy_meals/widget/meal_item.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  void _selectMeal(BuildContext context, Meal meal) async{
    final result = await Navigator.of(context).push<String>(
      MaterialPageRoute(
        builder: (context) => MealDetailsScreen(meal: meal),
      ),
    );
    print(result);
  }

  @override
  Widget build(BuildContext context) {
    Widget content = ListView.builder(
      itemCount: meals.length,
      itemBuilder: (context, index) => MealItem(
        meal: meals[index],
        onMealSelect: (meal) {
          _selectMeal(context, meal);
        },
      ),
    );

    if (meals.isEmpty) {
      content = const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Ohhhh there is no data at the moment',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'You can try again later . . .',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content,
    );
  }
}
