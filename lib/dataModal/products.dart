// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final double  calories;
  final String categoryId;
   double price;
  final String imagePath;
  final String name;
  final String typemesu;
  final double numPerSale;
   Product({
    required this.calories,
    required this.id,
    required this.categoryId,
    required this.price,
    required this.imagePath,
    required this.name,
    required this.typemesu,
    required this.numPerSale,


  });
}

class category{
final  String id;
 final String name;
 final String imageUrl;
  category({
    required this.id,
    required this.name,
    required this.imageUrl
  });
  
}
