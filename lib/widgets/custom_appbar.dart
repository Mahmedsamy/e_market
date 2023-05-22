import 'package:e_market/screens/wishlist/wishlist_screen.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements  PreferredSizeWidget {

  final String title;

  const CustomAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Center(
        child: Container(
          color: Colors.black,
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
            vertical: 10,
          ),
          child:  Text(
            title,
            style: Theme.of(context).textTheme.headline2!.copyWith(color: Colors.white)
          ),
        ),
      ),
      iconTheme: const IconThemeData(color: Colors.black,size: 40),
      actions: [IconButton(icon: const Icon(Icons.favorite), onPressed: () {
        Navigator.push(
                 context,
                 MaterialPageRoute(
                     builder: (BuildContext context) => WishList()));
      } ),],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(90.0);
}