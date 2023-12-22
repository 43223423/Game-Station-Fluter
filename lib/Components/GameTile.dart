import 'package:gamestation/models/game.dart';
import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  void Function()? onTap;
  Game game;
  GameTile({super.key, required this.game, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 350,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 235, 235, 235),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              game.imagePath,
              height: 300,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            game.description,
            style: TextStyle(color: Colors.grey[600], fontSize: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      game.name,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.black),
                    ),
                    Text(
                      "\$" + game.price,
                      style: TextStyle(color: Colors.grey, fontSize: 19.0),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Container(
                  child: Icon(Icons.add, color: Colors.white,),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      12,
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
