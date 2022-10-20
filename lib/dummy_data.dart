import 'package:flutter/material.dart';
import './models/category.dart';
import './models/meal.dart';

// ignore: constant_identifier_names
const DUMMY_DATA = [
  Categorys(
    id: 'c1',
    title: 'Italian',
    color: Colors.green,
  ),
  Categorys(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.orange,
  ),
  Categorys(
    id: 'c3',
    title: 'French',
    color: Colors.purple,
  ),
  Categorys(
    id: 'c4',
    title: 'Chinies',
    color: Colors.red,
  ),
  Categorys(
    id: 'c5',
    title: 'Humburgers',
    color: Colors.teal,
  ),
  Categorys(
    id: 'c6',
    title: 'Summer',
    color: Colors.indigo,
  ),
  Categorys(
    id: 'c7',
    title: 'Light & Lovely',
    color: Colors.amber,
  ),
  Categorys(
    id: 'c8',
    title: 'Exotic',
    color: Colors.pink,
  ),
  Categorys(
    id: 'c9',
    title: 'German',
    color: Colors.blue,
  ),
  Categorys(
    id: 'c10',
    title: 'Breakfast',
    color: Colors.cyan,
  ),
];

//This part is for the dummy meals data collection...
//here stored the all data from Meal.dart file.
//id is starting from m1.
//dummy data used enums also.
//...

// ignore: constant_identifier_names
const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: ['c1', 'c7', 'c4'],
    title: 'Spaghetti with Tomato Sauce',
    imgUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/black-pepper-chicken2-1647635684.jpeg?crop=1.00xw:0.726xh;0,0.111xh&resize=980:*',
    ingredients: [
      '4 Tomatos',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Spices',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 20,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['c2', 'c3', 'c6'],
    title: 'Toast Hawai',
    imgUrl: 'https://c.ndtvimg.com/55q0fj1_snacks-650_625x300_14_August_18.jpg',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 30,
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm3',
    categories: ['c4', 'c7'],
    title: 'Chocolate Souffle',
    imgUrl:
        'https://www.getflavor.com/wp-content/uploads/2019/01/4-Taureaux-Spread.jpg',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 25,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm4',
    categories: ['c5', 'c8'],
    title: 'Creame Indian Chicken Curry',
    imgUrl:
        'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/black-pepper-chicken2-1647635684.jpeg?crop=1.00xw:0.726xh;0,0.111xh&resize=980:*',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 35,
    complexity: Complexity.Challanging,
    affordability: Affordability.Luxurious,
    isGlutenFree: false,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm5',
    categories: ['c6', 'c6'],
    title: 'Pancakes',
    imgUrl:
        'https://www.mashed.com/img/gallery/fast-food-hamburgers-ranked-worst-to-best/intro-1540401194.jpg',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 40,
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm6',
    categories: ['c9', 'c10'],
    title: 'Asparagus salad with curry',
    imgUrl:
        'https://www.eatthis.com/wp-content/uploads/sites/4/2020/08/watermelon-pieces.jpg?quality=82&strip=1&w=640',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 22,
    complexity: Complexity.Hard,
    affordability: Affordability.Affordable,
    isGlutenFree: false,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: false,
  ),
  Meal(
    id: 'm7',
    categories: ['c7', 'c3'],
    title: 'Delicius Orange Mousse',
    imgUrl:
        'https://www.benefiber.com/amp/img/satisfying-light-meals/benefiber-light-spring-meals-that-satisfy-main.jpg',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 28,
    complexity: Complexity.Challanging,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactoseFree: false,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm8',
    categories: ['c7', 'c5'],
    title: 'Salad with Smoked Salmon',
    imgUrl:
        'https://insanelygoodrecipes.com/wp-content/uploads/2021/02/Homemade-German-Schnitzel-with-Potatoes-and-Cauliflower-683x1024.webp',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 32,
    complexity: Complexity.Simple,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm9',
    categories: ['c8', 'c10', 'c4'],
    title: 'Wiener Schnitzel',
    imgUrl:
        'https://assets3.thrillist.com/v1/image/1554054/1584x1056/crop;webp=auto;jpeg_quality=60;progressive.jpg',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 34,
    complexity: Complexity.Hard,
    affordability: Affordability.Luxurious,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm10',
    categories: ['c8', 'c9'],
    title: 'Classic Humburger',
    imgUrl:
        'https://insanelygoodrecipes.com/wp-content/uploads/2021/02/Chocolate-Chip-Pancakes-with-Whipped-Cream-683x1024.webp',
    ingredients: [
      '4 hawai',
      '1 tablespoon of Olive oil',
      '1 onion',
      '250g Spaghetti',
      'Cheese(optional)'
    ],
    steps: [
      'Butter one side white bread',
      'Layer hum, the pineapple and cheese on the white bread',
      'Bake the toast for round about 10 minutes in the oven'
    ],
    duration: 38,
    complexity: Complexity.Simple,
    affordability: Affordability.Pricey,
    isGlutenFree: true,
    isLactoseFree: true,
    isVegan: false,
    isVegetarian: false,
  ),
];
