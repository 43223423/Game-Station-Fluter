import 'package:flutter/material.dart';
import 'package:gamestation/Components/CartItem.dart';
import 'package:gamestation/Components/GameTile.dart';
import 'package:gamestation/models/cart.dart';
import 'package:gamestation/models/game.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "My Cart",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  Game individualGame = value.getUserCart()[index];

                  return CartItem(game: individualGame);
                },
              ))
            ],
          )),
    );
  }
}
