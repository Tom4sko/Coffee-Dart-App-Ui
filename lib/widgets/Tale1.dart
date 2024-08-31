import 'package:flutter/material.dart';
import 'package:learningstuff/screens/ProductsScreen.dart';

class Tale1 extends StatelessWidget {
  const Tale1({super.key, required this.productName, required this.price, required this.photography, required this.description});

  final String productName;
  final String price;
  final String photography;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => ProductsScreen(productName: productName, price: price, photography: photography, description: description,)));
      },
      child: Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Container(
            height: 250,
            width: 180,
            color: Color.fromARGB(255, 29, 28, 28),
            child: Column(
              children: [
                Expanded(
                  child: Image.asset(photography, fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Text(
                        productName,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        price,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
