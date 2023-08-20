import 'dart:core';

import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier {
//List of shoes for Sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Kick Game",
        price: "2000\$",
        imagepath: 'assets/pink.webp',
        description: "Nike Dunk Trainers"),
    Shoe(
        name: "Uni Blue",
        price: "700\$",
        imagepath: 'assets/uniBlue.webp',
        description: "Nike Dunk Low University Blue"),
    Shoe(
        name: "Chunky dunky",
        price: "550\$",
        imagepath: 'assets/chunkydunky.png',
        description: "Chunky Dunky - Nike Skateboarding"),
    Shoe(
        name: "Travis Scott",
        price: "1500\$",
        imagepath: 'assets/travis.webp',
        description: "Nike SB Dunk Low Travis Scott"),
  ];
//list of shoes in user cart
  List<Shoe> userCart = [];
//get List of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

//add item
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//remove item
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}

// class Cart {
//   List<Shoe> shoeShop = [
//     Shoe(
//         name: "Chunky dunky",
//         price: "550'\$",
//         imagepath: 'assets/chunkydunkt.png',
//         description: "Chunky Dunky - Nike Skateboarding"),
//     Shoe(
//         name: "Travis Scott",
//         price: "1500'\$",
//         imagepath: 'assets/travis.webp',
//         description: "Nike SB Dunk Low Travis Scott"),
//     Shoe(
//         name: "Grateful Dead Bears Green",
//         price: "2000'\$",
//         imagepath: 'green.webp',
//         description: "Nike SB Dunk Low Grateful Dead Bears Green"),
//     Shoe(
//         name: "University Blue",
//         price: "700'\$",
//         imagepath: 'assets/uniBlue.webp',
//         description: "Nike Dunk Low University Blue")
//   ];
//   List<Shoe> userCart=[];
//
//   List<Shoe>
//
//   // Add a shoe to the cart
//   void addToCart(Shoe shoe) {
//     userCart.add(shoe);
//   }
//
//   // Remove a shoe from the cart
//   void removeFromCart(Shoe shoe) {
//     userCart.remove(shoe);
//   }
//
//   // Calculate the total price of all shoes in the cart
//   double calculateTotalPrice() {
//     double total = 0.0;
//     for (var shoe in userCart) {
//       total += shoe.price;
//     }
//     return total;
//   }
// }
//
// void main() {
//   // Example usage:
//   var cart = Cart();
//
//   var shoe1 = Shoe("Running Shoes", 79.99);
//   var shoe2 = Shoe("Casual Shoes", 59.99);
//
//   cart.addToCart(shoe1);
//   cart.addToCart(shoe2);
//
//   print("Items in the cart:");
//   for (var shoe in cart.userCart) {
//     print("${shoe.name} - \$${shoe.price}");
//   }
//
//   print("Total Price: \$${cart.calculateTotalPrice()}");
// }
//
