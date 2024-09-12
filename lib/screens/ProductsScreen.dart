import 'package:flutter/material.dart';
import 'package:learningstuff/widgets/navigation.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key, required this.productName, required this.price, required this.photography, required this.description});

  final String productName;
  final String price;
  final String photography;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 40, 40),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 29, 28, 28),
        title: const Text('Exit', style: TextStyle(color: Colors.white,),),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
          },
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32.0), bottomRight: Radius.circular(32.0),),
            child: Container(
              width: double.maxFinite,
              height: 230,
              color: Color.fromARGB(255, 29, 28, 28),
              child: Expanded(child: SizedBox(child: Image.asset(photography),),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              children: [
                Text(productName, style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
                Spacer(),
                Text(price, style: TextStyle(color: Colors.grey, fontSize: 20.0, fontWeight: FontWeight.bold),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(description, style: TextStyle(color: Colors.white, fontSize: 18.0,),),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Container(
                width: 120,
                height: 50,
                color: Colors.white,
                child: Center(
                  child: Text("Order", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}