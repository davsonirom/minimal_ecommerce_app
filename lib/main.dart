import 'package:flutter/material.dart';
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
    );
  }
}
