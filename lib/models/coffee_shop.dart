import 'package:coffee_shop_app/models/coffee.dart';
import 'package:flutter/material.dart';

 class CoffeeShop extends ChangeNotifier{
  //coffee for sale
  final List<Coffee>_shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
       price: '4.10', 
       imagePath: 'lib/images/black.png'
       ),
    //latte
    Coffee(
      name: 'Latte',
       price: '4.20', 
       imagePath: 'lib/images/latte.png'
       ),
    //espresso
    Coffee(
      name: 'Espresso',
       price: '3.50', 
       imagePath: 'lib/images/espresso.png'
       ),
    //iced coffe
    Coffee(
      name: 'Iced Coffee',
       price: '4.40', 
       imagePath: 'lib/images/iced_coffee.png'
       ),

  ];
  //user cart
  List<Coffee>_userCart = [];

  //get coffee list
  List<Coffee> get coffeeShop => _shop;

  //get user cart
  List<Coffee> get userCart => _userCart;

  //add item to cart
  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item to cart
  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
 }