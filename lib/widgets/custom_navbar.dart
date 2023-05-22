import 'package:e_market/screens/cart/cart_screen.dart';
import 'package:e_market/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              }, icon: const Icon(Icons.home,color:Colors.white)),
              IconButton(onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => CartScreen()));
              }, icon: const Icon(Icons.shopping_cart,color:Colors.white)),
              IconButton(onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //         builder: (BuildContext context) => CartScreen()));
              }, icon: const Icon(Icons.person,color:Colors.white)),
            ],
          ),
        )
    );
  }
}
