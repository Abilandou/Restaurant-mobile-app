import 'package:scoped_model/scoped_model.dart';
import '../models/foo_models.dart';
import 'package:http/http.dart' as http;

class FoodModel extends Model {
  List<Food> _foods = [];

  List<Food> get foods{
    return List.from(_foods);
  }

  void addFood(Food food){
    _foods.add(food);
  }

  void  fetchFoods() {
    http.get("https://192.168.42.94/flutter_food_app/api/foods/get_foods.php").then(
        (http.Response response){
          print("THE RESPONSE HERE IS: ${response.body}");
        });
  }

}