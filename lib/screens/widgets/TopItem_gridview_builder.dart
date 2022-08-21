// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grosmart/constant.dart';
import 'package:grosmart/dataModal/products.dart';
import 'package:grosmart/dataModal/products_list.dart';

class SingleTopItem extends StatelessWidget {
  final Product singleProduct;

  const SingleTopItem({Key? key, required this.singleProduct})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Color.fromARGB(14, 0, 0, 0),
                blurRadius: 10,
                spreadRadius: 5)
          ]),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                child: Image.asset(
                  singleProduct.imagePath,
                  fit: BoxFit.contain,
                ),
              ),
              Text(singleProduct.name,
                  style: const TextStyle(fontSize: 20, color: black_label)),
              Text(
                '${singleProduct.calories} cal',
                style: const TextStyle(
                  color: Color(0xFF3D9667),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('\$${singleProduct.price}'),
                  Text(
                    '\\${singleProduct.numPerSale}${singleProduct.typemesu}',
                    style: TextStyle(color: green),
                  )
                ],
              )
            ],
          ),
          Positioned(
              bottom: -20,
              left: 62,
              child: Container(
                height: 42,
                width: 42,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xffBDE7D1),
                        green,
                      ]),
                ),
                child: InkWell(
                    onTap: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 34,
                    )),
              ))
        ],
      ),
    );
  }
}
