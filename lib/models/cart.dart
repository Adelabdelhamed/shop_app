import 'package:e_commerce/models/shoe.dart';
import 'package:flutter/foundation.dart';

class Cart extends ChangeNotifier {
//list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Black Mark',
        price: '230',
        imagePath: 'lib/images/shoes_one.png',
        describtion: 'describtion'),
    Shoe(
        name: 'jordans',
        price: '240',
        imagePath: 'lib/images/shoes_two.jpg',
        describtion: 'describtion'),
    Shoe(
        name: 'Zoom Freak',
        price: '270',
        imagePath: 'lib/images/shoes_three.jpg',
        describtion: 'describtion'),
    Shoe(
        name: 'Standard Blue',
        price: '275',
        imagePath: 'lib/images/shoes_four.png',
        describtion: 'describtion'),
  ];

// list of items in user cart
  List<Shoe> userCart = [];

// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove items from cart

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
