import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class category_builder extends StatelessWidget {
  final String imagePath;
  final String categoryname;

  const category_builder({required this.imagePath, required this.categoryname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        children: [
          Container(
            height: 70,
            width: 75,
            margin: const EdgeInsets.only(left :10, right: 10),
            padding: const EdgeInsets.all(20),
            child: Image.asset(imagePath),
            decoration: const BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                color: Color(0x0A000000),
                spreadRadius: 10,
                blurRadius: 10,
              )
            ]),

          )
        ],
      ),
    );
  }
}
