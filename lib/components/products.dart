import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, '/product_details'),
        child: Card(
          color: const Color(0xffEEEEF0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 4,
          margin: const EdgeInsets.all(20),
          child: Container(
            width: 200,
            height: 300,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Product Image
                Expanded(
                  child: Image.asset(
                    'assets/images/product.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 10),
                // Product Name
                const Text(
                  'Accu-check Active',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                // Product Type
                const Text(
                  'Test Strip',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 10),
                // Product Price
                const Text(
                  'Rs. 112',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
                const SizedBox(height: 10),
                // Rating Row
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Text('2'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
