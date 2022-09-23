import 'package:ecommerce/widget/customedrawe.dart';
import 'package:flutter/material.dart';

class MyHomeView extends StatelessWidget {
  const MyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: const MyDrawerCustome(),
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
      ),
    );
  }
}
