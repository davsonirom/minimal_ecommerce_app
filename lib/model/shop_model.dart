import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/model/product_model.dart';

class ShopModel extends ChangeNotifier {
  //? product for sale
  final List<ProductModel> _shop = [
    ProductModel(
      name: "Producto 1",
      price: 99.99,
      description: "item description...",
    ),
    ProductModel(
      name: "Producto 2",
      price: 99.99,
      description: "item description...",
    ),
    ProductModel(
      name: "Producto 3",
      price: 99.99,
      description: "item description...",
    ),
    ProductModel(
      name: "Producto 4",
      price: 99.99,
      description: "item description...",
    ),
    ProductModel(
      name: "Producto 5",
      price: 99.99,
      description: "item description...",
    ),
    ProductModel(
      name: "Producto 6",
      price: 99.99,
      description: "item description...",
    ),
  ];

  //? user cart
  final List<ProductModel> _cart = [];

  //? get product list
  List<ProductModel> get shop => _shop;

  //? get user cart
  List<ProductModel> get cart => _cart;

  //? add item to cart
  void addToCart(ProductModel item) {
    _cart.add(item);
    notifyListeners();
  }

  //? remove item from cart
  void removeFromCart(ProductModel item) {
    _cart.remove(item);
    notifyListeners();
  }
}
