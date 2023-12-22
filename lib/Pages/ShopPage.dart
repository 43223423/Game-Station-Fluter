import 'package:flutter/material.dart';
import 'package:gamestation/Components/GameTile.dart';
import 'package:gamestation/models/cart.dart';
import 'package:gamestation/models/game.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addGameToCart(Game game) {
    Provider.of<Cart>(context, listen: false).addItemToCart(game);

    // alert the user, game successfully added
    showDialog(
        context: context,
        builder: ((context) => AlertDialog(
              title: Text("Successfuly added!"),
              content: Text("Check your cart!"),
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(12.0),
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text(
              "Game On",
              style: TextStyle(color: Colors.grey[600], fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Top Games",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index) {
              
              Game game = value.getGameList()[index];

              return GameTile(game: game, onTap: () => addGameToCart(game));
            },
          ))
        ],
      ),
    );
  }
}
