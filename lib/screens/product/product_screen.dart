import 'package:e_market/widgets/custom_appbar.dart';
import 'package:e_market/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Product',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
