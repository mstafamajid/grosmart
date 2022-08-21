import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:grosmart/constant.dart';
import 'package:grosmart/dataModal/image_paths.dart';
import 'package:grosmart/dataModal/products_list.dart';
import 'package:grosmart/screens/widgets/Categories_itembuilder.dart';
import 'package:grosmart/screens/widgets/TopItem_gridview_builder.dart';

import 'package:provider/provider.dart';

class ProductOverView extends StatelessWidget {
  const ProductOverView({Key? key}) : super(key: key);
  static const nameRoute = 'ProductOverview';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: IconThemeData(color: Colors.white, size: 30)),
        child: CurvedNavigationBar(
          height: 60,
          color: green,
          backgroundColor: Colors.transparent,
          buttonBackgroundColor: green,
          animationDuration: Duration(milliseconds: 300),
          items: const [
            Icon(
              Icons.home_filled,
            ),
            Icon(
              Icons.favorite,
            ),
            Icon(
              Icons.shopping_cart,
            ),
            Icon(
              Icons.fact_check,
            ),
            Icon(
              Icons.person,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).canvasColor,
        toolbarHeight: 80,
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
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Welcome,',
              style: TextStyle(color: orange, fontSize: 26),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Grocery At Your Home.',
              style: TextStyle(
                  color: green, fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            height: 150,
            padding: const EdgeInsets.only(top: 0, right: 20, left: 20),
            child: Image.asset(
              friday_offer,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, top: 15),
            child: Text(
              'Categories',
              style: TextStyle(
                color: black_label,
                fontSize: 17,
              ),
            ),
          ),
          categoriesListviewBuilder(),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              'Top Items',
              style: TextStyle(
                color: black_label,
                fontSize: 20,
              ),
            ),
          ),
          Expanded(
              child: Consumer<Products>(builder: (context, products, child) {
            return GridView.builder(
              padding: const EdgeInsets.only(
                  top: 10, left: 30, right: 30, bottom: 90),
              itemCount: products.listOfProductsss.length,
              itemBuilder: ((context, index) => SingleTopItem(
                    singleProduct: products.listOfProductsss[index],
                  )),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.4 / 4,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 50),
            );
          }))
        ],
      ),
    );
  }

  Container categoriesListviewBuilder() {
    return Container(
      alignment: Alignment.center,
      height: 110,
      child: Consumer<Categories>(
        builder: (contextConsumer, catego, child) {
          return ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((ctx, index) => category_builder(
                  categoryname: catego.listOfCategories[index].name,
                  imagePath: catego.listOfCategories[index].imageUrl,
                )),
            itemCount: catego.listOfCategories.length,
            separatorBuilder: (BuildContext _, int index) => SizedBox(
              width: 20,
            ),
          );
        },
      ),
    );
  }
}
