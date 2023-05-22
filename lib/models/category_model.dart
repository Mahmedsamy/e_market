import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({
    required this.name,
    required this.imageUrl,
  });

  @override
  List<Object?> get props => throw [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: 'MackBook',
        imageUrl:
            'https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?cs=srgb&dl=pexels-craig-dennis-205421.jpg&fm=jpg'),
    const Category(
        name: 'HP',
        imageUrl:
            'https://i.pcmag.com/imagery/reviews/05WuMkCw3ufRhE5brVrTwhZ-1.fit_lim.size_840x473.v1669141791.jpg'),
    const Category(
        name: 'Dell',
        imageUrl:
            'https://media.cnn.com/api/v1/images/stellar/prod/221019173502-dell-xps-13-2022-review-cnnu-5.jpg?c=original'),
  ];
}
