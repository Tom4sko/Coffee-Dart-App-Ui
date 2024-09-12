import 'package:flutter/material.dart';
import 'package:learningstuff/widgets/Tale1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 77, 40, 40),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: const Color.fromARGB(255, 24, 22, 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            const Text(
                              "It's A Great Day\nFor Coffee",
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: TextField(
                          decoration: const InputDecoration(
                            label: Text("Search"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text(
                  "Our Coffee Products",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
              SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tale1(
                        productName: "Cortado",
                        price: "5.50\$",
                        photography: "assets/coffee_2.png",
                        description:
                            "A Cortado is a coffee drink made with equal parts espresso and steamed milk, creating a smooth, balanced flavor. The milk reduces the espresso's acidity without adding too much sweetness, making it perfect for those who enjoy a mellow coffee with a creamy texture.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tale1(
                        productName: "Latte",
                        price: "4.60\$",
                        photography: "assets/coffee_1.png",
                        description:
                            "A Latte is a creamy coffee drink made with espresso and a generous amount of steamed milk, topped with a thin layer of foam. It offers a mild coffee taste and a velvety texture, ideal for those who prefer a smooth and milky coffee experience.",
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Tale1(
                        productName: "Espresso",
                        price: "3.90\$",
                        photography: "assets/coffee_3.png",
                        description:
                            "Espresso is a strong, concentrated coffee made by forcing hot water through finely-ground coffee beans. It has a bold flavor and a rich crema on top, served in a small cup. Espresso is perfect for coffee lovers who enjoy a pure and intense coffee experience.",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    color: Colors.blue,
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: double.infinity,
                          color: const Color.fromARGB(255, 22, 19, 19),
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Order Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Your tongue will get the best experience ever.",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 60.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Container(
                                      width: 80,
                                      height: 30,
                                      color: Colors.white,
                                      child: Center(
                                        child: Text(
                                          "Click here",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: double.infinity,
                            child: Image.asset(
                              'assets/banner.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
