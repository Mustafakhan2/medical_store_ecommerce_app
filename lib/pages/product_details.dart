import 'package:ecommerce_app/components/pakage_size.dart';
import 'package:ecommerce_app/components/review.dart';
import 'package:ecommerce_app/components/stars.dart';
import 'package:ecommerce_app/pages/checkout.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            backgroundColor: Colors.transparent,
            floating: true,
            pinned: true,
            expandedHeight: 60.0,
            actions: [
              Row(
                children: [
                  Icon(Icons.notifications),
                  SizedBox(
                    width: 30,
                  ),
                  Icon(Icons.shopping_bag),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // Product Title
                Container(
                  margin: const EdgeInsets.only(left: 25, top: 20),
                  child: const Text(
                    'Sugar Free Gold Low Calories',
                    style: TextStyle(fontSize: 22),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 25),
                  child: const Text(
                    'Etiam mollis metus non purus',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
                // Product Image
                Padding(
                  padding: const EdgeInsets.only(
                      left: 25, right: 25, top: 25, bottom: 10),
                  child: Container(
                    width: 350,
                    height: 200,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 221, 218, 218),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.asset('assets/images/product2.png'),
                  ),
                ),
                // Ellipsis icon
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FontAwesomeIcons.ellipsis,
                      size: 30,
                    ),
                  ],
                ),
                // Price and Add to Cart
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Row(
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rs.99",
                            style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              fontSize: 30,
                              color: Color.fromARGB(255, 146, 141, 141),
                            ),
                          ),
                          Text('Etiam mollis'),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 25,
                        ),
                        child: const Text(
                          'Rs.54',
                          style: TextStyle(fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Icon(Icons.add),
                      const Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  thickness: 2.0,
                  indent: 16.0,
                  endIndent: 16.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(25),
                  child: Text(
                    'Package Size',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      PakageSize(pellets: '500 pellets', price: 'Rs.106'),
                      PakageSize(pellets: '110 pellets', price: 'Rs.166'),
                      PakageSize(pellets: '300 pellets', price: 'Rs.252'),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    child: const Text(
                      'Product Details',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Container(
                    child: const Text(
                        'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi. Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.'),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: const Text(
                            "Expiry Date",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        Container(
                          child: const Text(
                            '25/4/2025',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          child: Text(
                            "Brand Name",
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          child: Text(
                            'Something ',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Stars(),
                const SizedBox(
                  height: 20,
                ),
                const Review(),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ));
                  },
                  child: const Text('Go to Card'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
