import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:grosmart/constant.dart';
import 'package:grosmart/dataModal/image_paths.dart';

class ProductOverView extends StatelessWidget {
  const ProductOverView({Key? key}) : super(key: key);
  static const nameRoute = 'ProductOverview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        toolbarHeight: 90,
        elevation: 0,
        title: const Text(
          'Grocmart',
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 18),
              child: CircleAvatar(
                radius: 23,
                backgroundColor: green,
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Theme.of(context).canvasColor,
                    size: 30,
                  ),
                  onPressed: (() {}),
                ),
              )),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: const Text(
              'Welcome,',
              style: TextStyle(color: Color(0xFFFFA03C), fontSize: 26),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: const Text(
              'Welcome, Grocery At Your Home.',
              style: TextStyle(color: green),
            ),
          ),
          Container(
            height: 120,
            child: Image.asset(tomato),
          )
        ],
      ),
    );
  }
}
