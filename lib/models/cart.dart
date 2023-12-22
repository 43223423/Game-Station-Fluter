import 'package:gamestation/models/game.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Game> GameShop = [
    Game(
        name: "The Legend of Zelda: Breath of the Wild",
        price: "286.03",
        imagePath: 'lib/Imagens/Zelda.jpg',
        description:
            'ENTER A WORLD OF ADVENTURES. Climb towers and mountain peaks in search of new destinations in the Nintendo Switch game.'),
    Game(
        name: "Halo Infinite",
        price: "168.40",
        imagePath: 'lib/Imagens/Halo.jpg',
        description:
            'When all hope is lost and the fate of humanity hangs in the balance, the Master Chief is ready to face the most ruthless enemy he has ever faced..'),
    Game(
        name: "Nintendo Super Mario Odyssey",
        price: "318.98",
        imagePath: 'lib/Imagens/Mario.jpg',
        description:
            'This time, Mario is accompanied by an extremely versatile magic hat, which is capable of attacking enemies, taking control of large creatures and even being used as a platform..'),
    Game(
        name: "God of War Ragnarök",
        price: "169.80",
        imagePath: 'lib/Imagens/GodOfWar.jpg',
        description:
            'Embark on an epic and moving journey where Kratos and Atreus struggle between the desire to stay together or tear each other apart.'),
  ];

List<Game> useCart = [];

List<Game> getGameList(){
  return GameShop;
}

List<Game> getUserCart(){
  return useCart;
}

void addItemToCart(Game game){
  useCart.add(game);
  notifyListeners();
}

void removeItemFromCart(Game game){
  useCart.remove(game);
  notifyListeners();
}

}
