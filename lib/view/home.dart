import 'package:ecommerce/widget/catogries_cloth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  width: Get.size.width,
                  height: 190,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const MyCustomItemCatogries(
                        color: Colors.blue,
                      ),
                      const MyCustomItemCatogries(_
                      color: Colors.white,
,                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
