import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_market/models/models.dart';
import 'package:e_market/widgets/custom_appbar.dart';
import 'package:e_market/widgets/custom_navbar.dart';
import 'package:e_market/widgets/hero_carouse_card.dart';
import 'package:e_market/widgets/section_title.dart';
import 'package:flutter/material.dart';


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
                  .map((category) =>
                  HeroCarouseCard(
                    category: category,
                  ))
                  .toList(),
            ),
          ),
          const SectionTitle(title: 'RECOMENDED',),
          // product Card
           ProductCard()
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery
              .of(context)
              .size
              .width / 2.5,
          height: 150,
          child: Image.network(Product.products[0].imageUrl!,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 60,
          left: 5,
          child: Container(width: MediaQuery.of(context).size.width /2.5 - 10 ,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.black.withAlpha(90),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(Product.products[0].name!,style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),),
                      Text('\$${Product.products[0].price!}',style: Theme.of(context).textTheme.headlineMedium!.copyWith(color: Colors.white),)
                    ],
                  ),
                  Expanded(child: IconButton(onPressed: () {}, icon: const Icon(Icons.add_circle,color: Colors.white,)))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
