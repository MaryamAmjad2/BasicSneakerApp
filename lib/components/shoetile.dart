import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({super.key, required this.shoe, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Container(
        margin: EdgeInsets.only(
          left: 10,
        ),
        width: 230,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(height: 30),
            //img
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Image.asset(shoe.imagepath),
            ),

            Text(shoe.description, style: TextStyle(color: Colors.grey[500])),
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5,
                      ),
                      Text(shoe.price,
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(12)),
                        ),
                        child: Icon(Icons.add, color: Colors.white, size: 30)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
