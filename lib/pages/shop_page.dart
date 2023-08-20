import 'package:flutter/material.dart';
import 'package:nike_app/components/shoetile.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';

// class ShopePage extends StatelessWidget {
//   const ShopePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 17.0),
//       child: Container(
//         child: Column(
//           children: [
// //Search Bar
//             Container(
//                 padding: EdgeInsets.all(20),
//                 decoration: BoxDecoration(
//                     color: Colors.grey[100],
//                     borderRadius: BorderRadius.circular(25)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text("Search Your Dream Shoes",
//                         style: TextStyle(
//                           color: Colors.grey,
//                         )),
//                     Icon(Icons.search, color: Colors.black)
//                   ],
//                 )),
// //A simple Message
//             Padding(
//               padding: const EdgeInsets.symmetric(vertical: 18.0),
//               child: Text("EveryOne Flies,Some Fly longer than others",
//                   style: TextStyle(color: Colors.grey[600])),
//             ),
// //Shoes Pic
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text('Shoes',
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Colors.black,
//                         fontWeight: FontWeight.bold,
//                       )),
//                   Container(
//                     padding: EdgeInsets.all(7),
//                     decoration: BoxDecoration(
//                       color: Colors.black,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Row(
//                       children: [
//                         Text('See all',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.white,
//                             )),
//                         Icon(Icons.arrow_drop_down_circle, color: Colors.white)
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 10,
//             ),
//
//             Expanded(
//                 child: ListView.builder(
//                     itemCount: 4,
//                     scrollDirection: Axis.horizontal,
//                     itemBuilder: (context, index) {
//                       Shoe shoe = Shoe(
//                           name: 'Panda',
//                           price: '300',
//                           imagepath: 'assets/chunkydunky.png',
//                           description: 'Nike SB dunk Panda ');
//                       return ShoeTile(shoe: shoe);
//                     })),
//             Padding(
//               padding: const EdgeInsets.only(
//                   top: 28.0, bottom: 20, left: 20, right: 20),
//               child: Divider(height: 2, color: Colors.white),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class ShopePage extends StatefulWidget {
  const ShopePage({Key? key}) : super(key: key);

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
  //add Shoe to Cart Method
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);
    //alert the user
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(' SuccessFull'),
        content: Text("SuccessFully Added to Cart"),
        // actions: <Widget>[
        //   TextButton(
        //     onPressed: () {
        //       Navigator.push(context,
        //           MaterialPageRoute(builder: (context) => CartPage()));
        //     },
        //     child: const Text('Check Out Cart'),
        //   ),
        //   TextButton(
        //     onPressed: () {},
        //     child: const Text('Continue Shopping'),
        //   ),
        // ]
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17.0),
        child: Container(
          child: Column(
            children: [
//Search Bar
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(25)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Search Your Dream Shoes",
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                      Icon(Icons.search, color: Colors.black)
                    ],
                  )),
//A simple Message
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 18.0),
                child: Text("EveryOne Flies,Some Fly longer than others",
                    style: TextStyle(color: Colors.grey[600])),
              ),
//Shoes Pic
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shoes',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    Container(
                      padding: EdgeInsets.all(7),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        children: [
                          Text('See all',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              )),
                          Icon(Icons.arrow_drop_down_circle,
                              color: Colors.white)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Expanded(
                child: ListView.builder(
                    itemCount: 4,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      //get a shoe  from shop list
                      Shoe shoe = value.getShoeList()[index];
                      //Return Shoe
                      return ShoeTile(
                          shoe: shoe, onTap: () => addShoeToCart(shoe));
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 28.0, bottom: 20, left: 20, right: 20),
                child: Divider(height: 2, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
