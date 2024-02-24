import 'package:flutter/cupertino.dart';

import '../menu/menu_data.dart';
import '../order/order_screen.dart';

final List dishDisc = [
  {
    'dishImage': 'images/Chicken Ramen.jpeg',
    'dishName': 'Chicken Ramen',
    'dishDisc':
        'chicken breasts,  Fresh or dried, cooked, Soy Sauce, Mirin, Garlic and Ginger, Vegetables, Soft-boiled eggs, bamboo shoots, nori (seaweed), corn, and chili oil',
    'dishPrice': 95.0,
  },
  {
    'dishImage': 'images/Chicken Vegetable Ramen Noodles.jpeg',
    'dishName': 'Chicken Vegetable Noodles',
    'dishDisc':
        'chicken breasts , Egg noodles, Aromatics like(Garlic, ginger and green onions), soy sauce and  oyster sauce, stir-frying, Vegetables like( carrots, bell peppers, mushrooms, broccoli, and snow peas)',
    'dishPrice': 100.0,
  },
  {
    'dishImage': 'images/Creamy Vodka Pasta Perfection.jpeg',
    'dishName': 'Creamy Vodka Pasta',
    'dishDisc':
        'chicken breasts, kosher salt and freshly-ground black pepper, unsalted butter, vegetable oil, fresh ginger, minced, low-sodium soy sauce.',
    'dishPrice': 90.0,
  },
  {
    'dishImage': 'images/Crispy Chicken Fettuccine Alfredo.jpeg',
    'dishName': 'Crispy Chicken Fettuccine',
    'dishDisc':
        'chicken breasts, Panko bread crumbs, Alfredo sauce, granulated garlic, Parmesan Cheese, Fettuccine patsa, Heavy Cream',
    'dishPrice': 95.0,
  },
  {
    'dishImage': 'images/Fettuccine Alfredo With Shrimp Recipe.jpeg',
    'dishName': 'Fettuccine With Shrimp',
    'dishDisc':
        'Fettuccine Pasta, Shrimp, Garlic, Butter, Parmesan Cheese, Heavy Cream or Half-and-Half, Parsley, Olive Oil, Lemon Juice Optional',
    'dishPrice': 130.0,
  },
  {
    'dishImage': 'images/Green Goddess Pasta.jpeg',
    'dishName': 'Green Goddess Pasta',
    'dishDisc':
        'Your choice of pasta, Avocado, Parsley, Lime or Lemon Juice, Tahini, Garlic',
    'dishPrice': 90.0,
  },
  {
    'dishImage': 'images/Indonesian Fried Noodles.jpeg',
    'dishName': 'Indonesian Fried Noodles',
    'dishDisc':
        'Yellow wheat noodles, Chicken, prawns, or tofu for vegetarian, Vegetables(Cabbage, bean sprouts, and green onions, Eggs, Aromatics, Sweet soy sauce)',
    'dishPrice': 85.0,
  },
  {
    'dishImage': 'images/Italian Antipasto Pasta Salad.jpeg',
    'dishName': 'Italian Antipasto Pasta Salad',
    'dishDisc':
        'Bow tie or penne pasta, Cheese, Italian Meats(A mix of salami, capocollo, and calabrese), Vegetables(Sweet peppers, cherry tomatoes, black olives, red onions, and artichoke hearts), ',
    'dishPrice': 90.0,
  },
  {
    'dishImage': 'images/Seafood Spaghetti Marinara.jpeg',
    'dishName': 'Seafood Spaghetti Marinara',
    'dishDisc':
        '(mix of shrimp, calamari, fish, and mussels), Pasta, Tomato Sauce, Garlic, Onion, Olive Oil',
    'dishPrice': 120.0,
  },
  {
    'dishImage': 'images/creamy chicken pesto pasta.jpeg',
    'dishName': 'creamy chicken pesto pasta',
    'dishDisc':
        'Chicken, Pasta,  Basil pesto, Heavy Cream, Parmesan Cheese, Garlic, Olive Oil',
    'dishPrice': 100.0,
  },
  {
    'dishImage': 'images/Tomato Spinach Chicken Pasta.jpeg',
    'dishName': 'Tomato Spinach Chicken Pasta',
    'dishDisc':
        'Chicken breast, diced or sliced, Pasta, Olive oil, Garlic, Onion, Diced tomatoes, Spinach leaves, Italian seasoning or dried herbs, Red pepper flakes, Grated Parmesan cheese',
    'dishPrice': 95.0,
  },
  {
    'dishImage': 'images/pic4.jpeg',
    'dishName': 'Spice Noodles',
    'dishDisc':
        'chicken breasts, kosher salt and freshly-ground black pepper, unsalted butter, vegetable oil, fresh ginger, minced, low-sodium soy sauce.',
    'dishPrice': 85.0,
  },
  {
    'dishImage': 'images/Creamy Italian Pasta Salad.jpeg',
    'dishName': 'Creamy Italian Pasta Salad',
    'dishDisc':
        'Noodles, Soy sauce, Sesame oil, Ginger, Garlic, Red chili flakes, Vegetable oil, Vegetables of your choice, (chicken, shrimp, tofu, or beef), Green onions, Sesame seeds, Optional additional seasonings.',
    'dishPrice': 95.0,
  },
  {
    'dishImage': 'images/Pasta al Limone.jpeg',
    'dishName': 'Pasta al Lemon',
    'dishDisc':
        'Pasta, Lemons, Garlic, Freshly grated Parmesan cheese, Fresh parsley, Unsalted butter.',
    'dishPrice': 75.0,
  },
  {
    'dishImage': 'images/Spaghetti and Meatballs.jpeg',
    'dishName': 'Spaghetti and Meatballs',
    'dishDisc':
        'Ground beef, Breadcrumbs, Egg, Grated Parmesan cheese, Chopped fresh parsle Spaghetti pasta. ',
    'dishPrice': 100.0,
  },
  {
    'dishImage': 'images/Simple Italian Salad.jpeg',
    'dishName': 'Italian Salad',
    'dishDisc':
        'Mixed salad greens, Tomatoes, Cucumber, Red onion, Bell peppers, Black olives, Pepperoncini peppers, Italian dressing, Croutons, Grated Parmesan cheese.',
    'dishPrice': 70.0,
  },
];
List<Widget> screens = [
  const MenuData(),
  const OrderScreen(),
];
final List cart = [];
