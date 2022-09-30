//horizontal card items
import 'package:ecommerce/model/product_model.dart';
import 'package:flutter/material.dart';

class CustomeItemCard extends StatelessWidget {
  final ProductModel product;
  const CustomeItemCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 2,
        child: SizedBox(
          width: 150,
          height: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 150,
                height: 90,
                child: Image.network(
                  product.image!,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              FittedBox(
                child: Text(
                  product.title!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              Text("Rs${product.price}"),
            ],
          ),
        ),
      ),
    );
  }
}
