import 'package:flutter/material.dart';

class Store {

  String itemName;
  double itemPrice;
  String ItemImage;
  double itemRating;

  Store.items({
    this.itemName,
    this.itemPrice,
    this.ItemImage,
    this.itemRating
});


}

List<Store> storeItems = [
  Store.items(
    itemName: "Pink Can",
    itemPrice: 2500.00,
    ItemImage: "https://cutt.ly/hGt0NH",
    itemRating: 0.0
  ),

  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      ItemImage: "https://cutt.ly/yGt2he",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      ItemImage: "https://cutt.ly/HGuCYy",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      ItemImage: "https://cutt.ly/ZGuCHh",
      itemRating: 0.0
  ),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      ItemImage: "https://cutt.ly/2GuC2i",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Black Strip White",
      itemPrice: 2499.00,
      ItemImage: "https://cutt.ly/IGuVWK",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      ItemImage: "https://cutt.ly/RGuVB0",
      itemRating: 0.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 2500.00,
      ItemImage: "https://cutt.ly/XGuBPW",
      itemRating: 0.0
  ),

];
