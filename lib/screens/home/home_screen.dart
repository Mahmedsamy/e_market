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
        title: 'e_market',
      ),
      bottomNavigationBar: const CustomNavBar(),
      body: Column(
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
            title: 'RECOMENDED',
          ),
          //product Carousel
          // product Card
          // ProductCard(product: Product.products[0],)

          ProductCarousel(products: Product.products)
        ],
      ),
    );
  }
}

