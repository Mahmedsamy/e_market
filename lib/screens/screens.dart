import 'package:e_market/widgets/custom_appbar.dart';
import 'package:e_market/widgets/custom_navbar.dart';
import 'package:flutter/material.dart';

class Screens extends StatelessWidget {
  const Screens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'e_market',
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
