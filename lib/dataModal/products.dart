// ignore_for_file: public_member_api_docs, sort_constructors_first
class products {
  final String id;
  final String categoryId;
   double price;
  final String imagePath;
  final String name;
   products({
    required this.id,
    required this.categoryId,
    required this.price,
    required this.imagePath,
    required this.name,
  });
}

class categories {
final  String id;
 final String name;
  categories({
    required this.id,
    required this.name,
  });
  
}
