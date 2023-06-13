import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? name;
  final String? category;
  final String? imageUrl;
  final double? price;
  final bool? isRecommended;
  final bool? isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isRecommended,
    required this.isPopular,
  });

  @override
  List<Object?> get props =>
      [name, category, imageUrl, price, isRecommended, isPopular];
  static List<Product> products = [
    const Product(
        name: 'Dell inspiron',
        category: 'DELL',
        imageUrl:
        'https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?cs=srgb&dl=pexels-craig-dennis-205421.jpg&fm=jpg',
        price: 2.99,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'Hp Zbook',
        category: 'HP',
        imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Ftechnopedia.io%2Fshop%2Fhp%2Fhp-15-dw3033dx-laptop-intel-corei3-1115g4-8g-256gb-15-6-fhd-technopedia-egypt%2F&psig=AOvVaw3HBFs251-82Cne4_cI2wsK&ust=1686743865256000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCNDqn5KmwP8CFQAAAAAdAAAAABAF',
        price: 3.99,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'MacBook',
        category: 'Apple',
        imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.apple.com%2Fshop%2Fbuy-mac%2Fmacbook-pro&psig=AOvVaw01MVI4c1llgKJB_NXlTRZo&ust=1686744172458000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCPiutaSnwP8CFQAAAAAdAAAAABAE',
        price: 6.99,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'Lenovo',
        category: 'Lenovo',
        imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Falsahaba.com.eg%2Fproduct%2Flenovo-thinkpad-x1-yoga-g2-intel-core-i5-7300u-16gb-ram-256gb-ssd-intel-hd-graphics-620-14-inch-fhd-alsahaba%2F&psig=AOvVaw3BWhECLksZ0aMrKd4zrrU_&ust=1686744357424000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCIC92fynwP8CFQAAAAAdAAAAABAE',
        price: 2.99,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'Dell inspiron',
        category: 'DELL',
        imageUrl:
        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.amazon.eg%2F-%2Fen%2FDell-Inspiron-3505-Touchscreen-Laptop%2Fdp%2FB094L3BYRP&psig=AOvVaw30k4rAZtbLFy79ZzDnYtCp&ust=1686743354675000&source=images&cd=vfe&ved=0CBEQjRxqFwoTCMiSx56kwP8CFQAAAAAdAAAAABAE',
        price: 2.99,
        isRecommended: true,
        isPopular: false
    ),
  ];
}
