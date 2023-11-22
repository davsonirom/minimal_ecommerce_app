import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/widgets/widget_botao.dart';

class MinimalEcommercePage extends StatelessWidget {
  const MinimalEcommercePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //!logo
              Icon(
                Icons.shopping_bag,
                size: 72.0,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              const SizedBox(
                height: 25.0,
              ),
              //! title
              const Text(
                "Minimal Shop",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              //! suntitle
              Text(
                "Premium Quality Products",
                style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary),
              ),
              const SizedBox(
                height: 25.0,
              ),
              //! button
              WidgetBotao(
                onTap: () {
                  Navigator.pushNamed(context, '/shop_page');
                },
                child: const Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
