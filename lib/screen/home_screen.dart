import 'package:ecommerce/controller/product_controller.dart';
import 'package:ecommerce/widget/horizontal_items.dart';

import 'package:ecommerce/widget/list_tile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var pController = Get.find<ProductController>();
    return Obx(
      () {
        if (pController.isLoading.value == true) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return SingleChildScrollView(
            child: Column(
              children: [
                //Search box
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search',
                    ),
                  ),
                ),

                const SizedBox(
                  height: 10.0,
                ),
                //banner offering
                const CustomeListTile(
                  title: "Most Popular Items",
                  subtitle: "Buy 1 Get 1 free!",
                ),

                //horizontal scolling listView

                //padding
                const SizedBox(
                  height: 2.0,
                ),
                const CustomeListTile(
                  title: "Popular Catogries",
                  subtitle: "Get 20% off on all product.",
                ),
                //Horizontal list of items and catogries
                GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 9.0,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    HorizontalItems(
                      image:
                          "https://cdn.pixabay.com/photo/2019/11/09/17/02/burger-4614022__340.jpg",
                      text: "Ladies clothing",
                      price: 'Rs299',
                    ),
                    HorizontalItems(
                      image:
                          "https://cdn.pixabay.com/photo/2016/11/20/09/06/bowl-1842294__340.jpg",
                      text: "Baby clothing",
                      price: 'Rs299',
                    ),
                    HorizontalItems(
                      image:
                          "https://cdn.pixabay.com/photo/2018/07/18/19/12/pasta-3547078__340.jpg",
                      text: "Child clothing",
                      price: 'Rs299',
                    ),
                    HorizontalItems(
                      image:
                          "https://cdn.pixabay.com/photo/2014/04/22/02/56/pizza-329523__340.jpg",
                      text: "Teen clothing",
                      price: 'Rs299',
                    ),
                  ],
                ),
              ],
            ),
          );
        } //else ko  curly braces
      }, //Obx ko vitra ko curly braces
    );
  }
}
