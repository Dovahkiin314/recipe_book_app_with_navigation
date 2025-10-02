import 'package:flutter/material.dart';
import 'details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, String>> recipes = const [
    {
      'name': 'Spaghetti Bolognese',
      'ingredients': 'Pasta, Ground beef, Tomato sauce, Onion, Garlic',
      'instructions': '1. Cook pasta\n2. Prepare sauce\n3. Mix and serve'
    },
    {
      'name': 'Chicken Curry',
      'ingredients': 'Chicken, Curry powder, Coconut milk, Onion, Garlic',
      'instructions': '1. Fry onion and garlic\n2. Add chicken and curry powder\n3. Stir in coconut milk and simmer'
    },
    {
      'name': 'Pancakes',
      'ingredients': 'Flour, Milk, Eggs, Sugar, Baking powder',
      'instructions': '1. Mix ingredients\n2. Pour batter on pan\n3. Flip and cook both sides'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Recipes')),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(recipes[index]['name']!),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    recipeName: recipes[index]['name']!,
                    ingredients: recipes[index]['ingredients']!,
                    instructions: recipes[index]['instructions']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
