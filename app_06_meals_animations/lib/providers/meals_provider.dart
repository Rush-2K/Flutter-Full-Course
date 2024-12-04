import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:app_06_meals_animations/data/dummy_data.dart';

final mealsProvider = Provider((ref) {
  return dummyMeals;
});
