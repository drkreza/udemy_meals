import 'package:flutter/material.dart';
import 'package:udemy_meals/screens/filters.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Theme.of(context).colorScheme.primaryContainer,
                  Theme.of(context)
                      .colorScheme
                      .primaryContainer
                      .withOpacity(0.8),
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
              ),
              child: Row(
                children: [
                  Icon(
                    Icons.fastfood,
                    color: Theme.of(context).colorScheme.primary,
                    size: 48,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Cooking Up!',
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  )
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.no_meals),
              title: Text(
                'Meals',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              leading: const Icon(Icons.filter_alt_rounded),
              title: Text(
                'Filters',
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontSize: 24,
                    ),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context)=>const FiltersScreen(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
