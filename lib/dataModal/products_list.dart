import 'package:flutter/foundation.dart';
import 'image_paths.dart';
import 'products.dart';

class Products with ChangeNotifier {
  List<Product> _listOfProducts = [
    Product(
        numPerSale: 1,
        calories: 80,
        id: 'id5',
        categoryId: 'ct2',
        price: 2,
        imagePath: cheese,
        name: 'cheese',
        typemesu: 'kg'),
    Product(
        numPerSale: 1,
        typemesu: 'kg',
        calories: 43,
        id: 'id8',
        categoryId: 'ct3',
        price: 1.5,
        imagePath: mango,
        name: 'mango'),
    Product(
        numPerSale: 1,
        typemesu: 'kg',
        calories: 23,
        id: 'id4',
        categoryId: 'ct2',
        price: 1.1,
        imagePath: carrot,
        name: 'carrot'),
    Product(
        numPerSale: 1,
        typemesu: 'lt',
        calories: 33,
        id: 'id10',
        categoryId: 'ct3',
        price: 5,
        imagePath: milk,
        name: 'milk'),
    Product(
        numPerSale: 10,
        typemesu: 'pcs',
        calories: 26,
        id: 'id3',
        categoryId: 'ct1',
        price: 2,
        imagePath: bread,
        name: 'bread'),
    Product(
        numPerSale: 1,
        typemesu: 'kg',
        calories: 22,
        id: 'id11',
        categoryId: 'ct3',
        price: 2.5,
        imagePath: tomato,
        name: 'tomato'),
    Product(
        numPerSale: 1,
        typemesu: 'kg',
        calories: 43,
        id: 'id1',
        categoryId: 'ct1',
        price: 1,
        imagePath: banana,
        name: 'banana'),
    Product(
        numPerSale: 5,
        typemesu: 'pcs',
        calories: 45,
        id: 'id12',
        categoryId: 'ct2',
        price: 1,
        imagePath: cookie,
        name: 'cookie'),
  ];
  List<Product> get listOfProductsss {
    return [..._listOfProducts];
  }

  void add(Product newproduct) {
    _listOfProducts.add(newproduct);
    notifyListeners();
  }
}

class Categories with ChangeNotifier {
  List<category> _categories_list = [
    category(id: 'ct1', name: 'dairy', imageUrl: dairy),
    category(id: 'ct2', name: 'fruits', imageUrl: fruit),
    category(id: 'ct3', name: 'bakery', imageUrl: bakery),
    category(id: 'ct3', name: 'vegitable', imageUrl: organic_food),
  ];
  List<category> get listOfCategories {
    return _categories_list;
  }
}
