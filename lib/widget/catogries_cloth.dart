import 'package:ecommerce/util/page_padding.dart';
import 'package:flutter/material.dart';

class MyCustomItemCatogries extends StatelessWidget {
  final Color color;
  const MyCustomItemCatogries({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PageSize.padding),
      child: Container(
        width: 130,
        height: 190,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.piano),
            const SizedBox(
              height: PageSize.padding,
            ),
            const Text(
              'Pizza',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: PageSize.padding,
            ),
            CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
