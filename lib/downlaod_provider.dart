import 'package:flutter/material.dart';

class DownlaodProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> download = [];

  void addProduct(Map<String, dynamic> product) {
    download.add(product);
    notifyListeners();
  }

  void removeProduct(Map<String, dynamic> product) {
    download.remove(product);
    notifyListeners();
  }
}
