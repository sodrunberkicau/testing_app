import 'package:flutter/material.dart';

class FavoritesModel extends ChangeNotifier {
  final List<int> _favoriteItems = [];

  List<int> get items {
    return _favoriteItems;
  }

  void add(int itemNo) {
    _favoriteItems.add(itemNo);
    notifyListeners();
  }

  void remove(int itemNo) {
    _favoriteItems.remove(itemNo);
    notifyListeners();
  }
}
