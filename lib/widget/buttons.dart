import 'package:ecommerce/util/color_app.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String text;
  const MyButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.primaryColor,
                  AppColor.secondaryColor,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            height: 45.0,
            child: MaterialButton(
              onPressed: () {},
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
