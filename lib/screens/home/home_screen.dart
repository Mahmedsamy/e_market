import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_market/models/models.dart';
import 'package:flutter/material.dart';
import 'package:e_market/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'E-Market',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 2.0,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  initialPage: 2,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarouseCard(
                          category: category,
                        ))
                    .toList(),
              ),
            ),
             const SectionTitle(
              title: 'RECOMMENDED'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isRecommended)
                    .toList()),
            const SectionTitle(
                title: 'Most Popular'),
            ProductCarousel(
                products: Product.products
                    .where((product) => product.isPopular)
                    .toList()),
          ],
        ),
      ),
    );
  }
}
