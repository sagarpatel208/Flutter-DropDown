import 'package:flutter_dropdown/model/dropdown_model.dart';

class DataSource {
  // Fruits listing data
  static const List fruitsData = [
    'Fruit',
    'Apple',
    'Banana',
    'Mango',
    'Strawberry',
    'Watermelon',
    'Orange'
  ];

  // Map Fruits listing data
  static List<DropDownModel> mapFruitsData = [
    DropDownModel(id: 0, name: 'Fruit'),
    DropDownModel(id: 1, name: 'Apple'),
    DropDownModel(id: 2, name: 'Banana'),
    DropDownModel(id: 3, name: 'Mango'),
    DropDownModel(id: 4, name: 'Strawberry'),
    DropDownModel(id: 5, name: 'Watermelon'),
    DropDownModel(id: 6, name: 'Orange'),
  ];
}
