import 'package:flutter/material.dart';
import 'package:nike_app/pages/home.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Image.asset(
                  'assets/nike.png',
                  height: 240,
                  width: 330,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //title
              Text(
                "Just Do it",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              //sub title
              Text(
                "Your Dream Sneaker Hub",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              //button
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 35),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      "Lets Go",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(25)),
                ),
              )
            ],
          ),
        ));
  }
}
