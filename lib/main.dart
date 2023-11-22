import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/page/cart_page.dart';
import 'package:minimal_ecommerce_app/page/shop_page.dart';
import 'package:minimal_ecommerce_app/themes/light_mode.dart';

import 'page/minimal_ecommerce_page.dart';

void main() {
  runApp(const MiaSoftware39());
}

class MiaSoftware39 extends StatelessWidget {
  const MiaSoftware39({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minimal Ecommerce',
      theme: lightMode,
      debugShowCheckedModeBanner: true,
      home: const MinimalEcommercePage(),
      routes: {
        '/minimal_ecommerce_page': (context) => const MinimalEcommercePage(),
        '/shop_page': (context) => const ShopPage(),
        '/cart_page': (context) => const CartPage(),
      },
    );
  }
}
