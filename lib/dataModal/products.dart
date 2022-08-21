// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';

class Product with ChangeNotifier{
  final String id;
  final String categoryId;
   double price;
  final String imagePath;
  final String name;
   Product({
    required this.id,
    required this.categoryId,
    required this.price,
    required this.imagePath,
    required this.name,
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
