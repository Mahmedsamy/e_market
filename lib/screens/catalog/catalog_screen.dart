import 'package:e_market/models/category_model.dart';
import 'package:e_market/widgets/custom_appbar.dart';
import 'package:e_market/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  final Category category;

  const CatalogScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'Catalog',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
