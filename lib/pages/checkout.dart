import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int quantity1 = 1;
  int quantity2 = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your cart'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back press
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  _buildCartItem(
                      'Sugar free gold', 'bottle of 500 pellets', 25, quantity1,
                      (val) {
                    setState(() {
                      quantity1 = val;
                    });
                  }),
                  _buildCartItem(
                      'Sugar free gold', 'bottle of 500 pellets', 18, quantity2,
                      (val) {
                    setState(() {
                      quantity2 = val;
                    });
                  }),
                ],
              ),
            ),
            const Divider(),
            _buildPaymentSummary(),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle place order action
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Button color
                padding: const EdgeInsets.symmetric(vertical: 15),
                minimumSize:
                    const Size(double.infinity, 50), // Full-width button
              ),
              child: const Text(
                'Place Order',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCartItem(String title, String subtitle, double price,
      int quantity, Function(int) onQuantityChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Container(
            width: 60,
            height: 60,
            color: Colors.grey[200], // Placeholder for image
            child: const Center(
              child: Image(
                image: AssetImage('assets/images/product.png'),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Text(subtitle,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          Text('Rs.$price', style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 10),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  if (quantity > 1) onQuantityChanged(quantity - 1);
                },
              ),
              Text(quantity.toString()),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  onQuantityChanged(quantity + 1);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentSummary() {
    double orderTotal = 228.80;
    double itemsDiscount = 28.80;
    double couponDiscount = 15.80;
    double total = orderTotal - itemsDiscount - couponDiscount;

    return Column(
      children: [
        _buildSummaryRow('Order Total', 'Rs.$orderTotal'),
        _buildSummaryRow('Items Discount', '- Rs.$itemsDiscount'),
        _buildSummaryRow('Coupon Discount', '- Rs.$couponDiscount'),
        _buildSummaryRow('Shipping', 'Free'),
        const Divider(),
        _buildSummaryRow('Total', 'Rs.${total.toStringAsFixed(2)}',
            isBold: true),
      ],
    );
  }

  Widget _buildSummaryRow(String label, String value, {bool isBold = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
          Text(
            value,
            style: TextStyle(
                fontSize: 14,
                fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
