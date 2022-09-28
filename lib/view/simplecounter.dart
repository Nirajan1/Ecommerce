import 'package:ecommerce/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    var mf = Get.find<Myfuntion>();
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Obx(
          () {
            return Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      mf.decrement();
                    },
                    icon: const Icon(Icons.remove),
                  ),
                  Text("${mf.qty}"),
                  IconButton(
                    onPressed: () {
                      mf.increment();
                    },
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
