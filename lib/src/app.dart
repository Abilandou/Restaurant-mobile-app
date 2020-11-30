import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:test_env/src/scoped-model/food_model.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {

  final FoodModel foodModel = FoodModel();

  @override
  Widget build(BuildContext context){
    return ScopedModel<FoodModel>(
        model: foodModel,
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Food Delivery App",
          theme: ThemeData(
              primaryColor: Colors.blueAccent
          ),
          home: MainScreen(foodModel: foodModel),
        ),
    );
  }
}