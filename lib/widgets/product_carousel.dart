import 'package:e_market/models/models.dart';
import 'package:e_market/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatelessWidget {

  final List<Product> products;

  const ProductCarousel({
    super.key,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: Product.products.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ProductCard(product: Product.products[index]),
            );
          }),
    );
  }
}
