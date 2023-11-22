import 'package:flutter/material.dart';
import 'package:minimal_ecommerce_app/model/product_model.dart';
import 'package:minimal_ecommerce_app/model/shop_model.dart';
import 'package:minimal_ecommerce_app/widgets/widget_botao.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  //? remover item cart
  void removeItemFromCart(BuildContext context, ProductModel product) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog.adaptive(
        content: const Text("Remover item do carrinho?"),
        actions: [
          //* cancel
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancelar"),
          ),
          //* yes addd
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);

              //? add cart
              context.read<ShopModel>().removeFromCart(product);
            },
            child: const Text("yes!"),
          ),
        ],
      ),
    );
  }

  //? backend Pagamento
  void payButtomPressed(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) => const AlertDialog.adaptive(
              content: Text("Conertar com o back End para o pagamento!!!... "),
            ));
  }

  @override
  Widget build(BuildContext context) {
    //? access list cart
    final cart = context.watch<ShopModel>().cart;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Cart Page'),
      ),
      body: Column(
        children: [
          Expanded(
            child: cart.isEmpty
                ? const Center(
                    child: Text("Nada no carrinho"),
                  )
                : ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return ListTile(
                        title: Text(item.name),
                        subtitle: Text(item.price.toStringAsFixed(2)),
                        trailing: IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () => removeItemFromCart(context, item),
                        ),
                      );
                    },
                  ),
          ),
          Padding(
              padding: const EdgeInsets.all(50.0),
              child: Visibility(
                visible: cart.isNotEmpty,
                child: WidgetBotao(
                    onTap: () => payButtomPressed(context),
                    child: const Text("Finalizar Comprar")),
              )),
        ],
      ),
    );
  }
}
