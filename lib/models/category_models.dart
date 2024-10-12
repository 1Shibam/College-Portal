import 'package:flutter/material.dart';

class CategoryModels {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModels({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModels> getCategories() {
    List<CategoryModels> categories = [];

    categories.add(CategoryModels(
        name: 'About Student',
        iconPath: 'assets/icons/about sudent.svg',
        boxColor: const Color.fromARGB(255, 176, 220, 255)));
    categories.add(CategoryModels(
        name: 'Attendance',
        iconPath: 'assets/icons/attendance.svg',
        boxColor: const Color.fromARGB(255, 255, 176, 219)));
    categories.add(CategoryModels(
        name: 'Exams',
        iconPath: 'assets/icons/exams.svg',
        boxColor: const Color.fromARGB(255, 176, 255, 222)));
    categories.add(CategoryModels(
        name: 'Performance',
        iconPath: 'assets/icons/performance.svg',
        boxColor: const Color.fromARGB(255, 255, 194, 176)));
    categories.add(CategoryModels(
        name: 'Achivements',
        iconPath: 'assets/icons/achievement.svg',
        boxColor: const Color.fromARGB(255, 250, 255, 176)));
    return categories;
  }
}
