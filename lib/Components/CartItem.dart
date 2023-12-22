import 'package:flutter/material.dart';
import 'package:gamestation/models/cart.dart';
import 'package:gamestation/models/game.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Game game;
  CartItem({super.key, required this.game});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.game);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 221, 221, 221), borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        title: Text(widget.game.name),
        leading: Image.asset(
          widget.game.imagePath,
        ),
        subtitle: Text("\$" + widget.game.price),
        trailing: IconButton(
            onPressed: () => removeItemCart(), icon: Icon(Icons.delete)),
      ),
    );
  }
}
