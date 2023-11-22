import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/model/shop_model.dart';
import 'package:minimal_ecommerce_app/widgets/widget_drawer.dart';
import 'package:minimal_ecommerce_app/widgets/widget_product_tile.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});
  @override
  Widget build(BuildContext context) {
    //* access product in shop
    final products = context.watch<ShopModel>().shop;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Shop Page'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, '/cart_page'),
            icon: const Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      drawer: const WidgetDrawer(),
      body: ListView(
        children: [
          const SizedBox(
            height: 25.0,
          ),
          Center(
            child: Text(
              "Pick from a selected list of premiu",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
          ),
          SizedBox(
            height: 550,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(15),
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return WidgetProductTile(product: product);
              },
            ),
          ),
        ],
      ),
    );
  }
}
