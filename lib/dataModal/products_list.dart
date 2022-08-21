// ignore_for_file: prefer_final_fields

import 'package:flutter/foundation.dart';
import 'image_paths.dart';
import 'products.dart';

class Products with ChangeNotifier {
  List<Product> listOfProducts = [
    Product(
        id: 'id2',
        categoryId: 'ct1',
        price: 1,
        imagePath: bakery,
        name: 'bakery'),
    Product(
        id: 'id6',
        categoryId: 'ct2',
        price: 3,
        imagePath: cookie,
        name: 'cookie'),
    Product(
        id: 'id7',
        categoryId: 'ct3',
        price: 4,
        imagePath: dairy,
        name: 'dairy'),
    Product(
        id: 'id5',
        categoryId: 'ct2',
        price: 2,
        imagePath: cheese,
        name: 'cheese'),
    Product(
        id: 'id8',
        categoryId: 'ct3',
        price: 1.5,
        imagePath: mango,
        name: 'mango'),
    Product(
        id: 'id4',
        categoryId: 'ct2',
        price: 1.1,
        imagePath: carrot,
        name: 'carrot'),
    Product(
        id: 'id10', categoryId: 'ct3', price: 5, imagePath: milk, name: 'milk'),
    Product(
        id: 'id3',
        categoryId: 'ct1',
        price: 2,
        imagePath: bread,
        name: 'bread'),
    Product(
        id: 'id11',
        categoryId: 'ct3',
        price: 2.5,
        imagePath: tomato,
        name: 'tomato'),
    Product(
        id: 'id1',
        categoryId: 'ct1',
        price: 1,
        imagePath: banana,
        name: 'banana'),
  ];
  List<Product> get listOfProductsss {
    return [...listOfProducts];
  }

  void add(Product newproduct) {
    listOfProducts.add(newproduct);
    notifyListeners();
  }
}

// class Categories with ChangeNotifier {
//   List<category> categories_list = [
//     category(id: 'ct1', name: 'dairy', imageUrl: dairy),
//     category(id: 'ct2', name: 'fruits', imageUrl: fruit),
//     category(id: 'ct3', name: 'bakery', imageUrl: bakery),
//     category(id: 'ct3', name: 'vegitable', imageUrl: organic_food),
//   ];
//    List<category> get listOfCategories {
//     return categories_list;
//   }
// }
