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
    itemPrice: 300000.0,
    ItemImage: "https://cutt.ly/hGt0NH",
    itemRating: 4.0
  ),

  Store.items(
      itemName: "Black Strip White",
      itemPrice: 450000.0,
      ItemImage: "https://cutt.ly/yGt2he",
      itemRating: 3.5
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice:500000.0,
      ItemImage: "https://cutt.ly/HGuCYy",
      itemRating: 4.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 250000.0,
      ItemImage: "https://cutt.ly/ZGuCHh",
      itemRating: 3.5
  ),
  Store.items(
      itemName: "Pink Can",
      itemPrice: 130000.0,
      ItemImage: "https://cutt.ly/2GuC2i",
      itemRating: 4.0
  ),

  Store.items(
      itemName: "Black Strip White",
      itemPrice: 320000.0,
      ItemImage: "https://cutt.ly/IGuVWK",
      itemRating: 3.0
  ),


  Store.items(
      itemName: "Pink Can",
      itemPrice: 100000.0,
      ItemImage: "https://cutt.ly/RGuVB0",
      itemRating: 4.0
  ),

  Store.items(
      itemName: "Pink Can",
      itemPrice: 350000.00,
      ItemImage: "https://cutt.ly/XGuBPW",
      itemRating: 5.0
  ),

];