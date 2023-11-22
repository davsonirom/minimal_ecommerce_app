import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/widgets/widget_list_tile.dart';

class WidgetDrawer extends StatelessWidget {
  const WidgetDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //! drawer header: logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72.0,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
              ),

              const SizedBox(
                height: 25.0,
              ),

              //! shop tile
              WidgetListTile(
                text: "Shop",
                icon: Icons.home,
                onTap: () {
                  Navigator.pop(context);
                },
              ),

              //! cart tile
              WidgetListTile(
                text: "Cart",
                icon: Icons.shopping_cart,
                onTap: () {
                  //* close drawer frist
                  Navigator.pop(context);
                  //* go to page cart
                },
              ),
            ],
          ),
          //! exit shop tile
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: WidgetListTile(
              text: "Exit",
              icon: Icons.exit_to_app,
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
