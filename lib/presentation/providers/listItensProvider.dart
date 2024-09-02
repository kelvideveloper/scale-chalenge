import 'package:flutter/material.dart';
import 'package:remember/data/models/item.dart';

class ItemModel extends ChangeNotifier {
  List<Item> itens = [
    Item(name: "item 1", scale: 1),
    Item(name: "item 2", scale: 1),
    Item(name: "item 3", scale: 1),
    Item(name: "item 4", scale: 1),
  ];

  int getScaleSum() {
    int total = 0;
    for (int i = 0; i < itens.length; i++) {
      total += itens[i].scale;
    }
    return total;
  }

  void incrementScale(int item) {
    itens[item].setScale(itens[item].scale + 1);
    notifyListeners();
  }

  void restart() {
    for (int i = 0; i < itens.length; i++) {
      itens[i].setScale(1);
    }
    notifyListeners();
  }
}
