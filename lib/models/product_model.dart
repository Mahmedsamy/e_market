import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String? name;
  final String? category;
  final String? imageUrl;
  final double? price;
  final bool isRecommended;
  final bool isPopular;

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
        'https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c03954689.png',
        price: 3.99,
        isRecommended: true,
        isPopular: true
    ),
    const Product(
        name: 'MacBook',
        category: 'Apple',
        imageUrl:
        'https://techcrunch.com/wp-content/uploads/2020/11/2020-11-16-074520097.jpg',
        price: 6.99,
        isRecommended: true,
        isPopular: true
    ),
    const Product(
        name: 'Lenovo',
        category: 'Lenovo',
        imageUrl:
        'https://t4.ftcdn.net/jpg/03/38/71/07/360_F_338710749_pybwz4wCKyDK3mwV7wnDh8ZeKwOGXnKD.jpg',
        price: 2.99,
        isRecommended: true,
        isPopular: false
    ),
    const Product(
        name: 'Dell inspiron',
        category: 'DELL',
        imageUrl:
            'https://i.dell.com/is/image/DellContent//content/dam/ss2/product-images/dell-client-products/notebooks/latitude-notebooks/14-3420/media-gallery/peripherals_laptop_latitude_3420nt_gallery_1.psd?fmt=pjpg&pscan=auto&scl=1&wid=3319&hei=2405&qlt=100,1&resMode=sharp2&size=3319,2405&chrss=full&imwidth=5000',
        price: 2.99,
        isRecommended: true,
        isPopular: false
    ),
  ];
}
