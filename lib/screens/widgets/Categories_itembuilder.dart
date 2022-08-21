import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grosmart/constant.dart';

class category_builder extends StatelessWidget {
  final String imagePath;
  final String categoryname;

  const category_builder({required this.imagePath, required this.categoryname});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 60,
            width: 60,
            margin: const EdgeInsets.only(left: 10, right: 10,),
            padding: const EdgeInsets.all(8),
            child: Image.asset(imagePath),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0A000000),
                    blurRadius: 10,
                  )
                ]),
          ),
          Text(
            categoryname,
            style: const TextStyle(color: green, fontSize: 15),
          )
        ],
      ),
    );
  }
}
