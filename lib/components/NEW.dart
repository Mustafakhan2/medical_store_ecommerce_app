import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: QuickMedicalStore(),
  ));
}

class QuickMedicalStore extends StatelessWidget {
  const QuickMedicalStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F3F3),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFF3366FF),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/images/myself.png'), // Replace with your asset
                                radius: 30,
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Hi, Shahzeb',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Welcome to Quick Medical Store',
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: const [
                              Icon(Icons.notifications, color: Colors.white),
                              SizedBox(width: 20),
                              Icon(Icons.shopping_bag, color: Colors.white),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      // Search Bar
                      TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Search Medicine & Healthcare products',
                          prefixIcon: const Icon(Icons.search, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                // Top Categories
                const Text(
                  'Top Categories',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    CategoryButton(category: 'Dental', color1: Color(0xffFF9598), color2: Color(0xffFF70A7)),
                    CategoryButton(category: 'Wellness', color1: Color(0xff19E5A5), color2: Color(0xff15BD92)),
                    CategoryButton(category: 'Homeo', color1: Color(0xffFFC06F), color2: Color(0xffFF793A)),
                    CategoryButton(category: 'Eye care', color1: Color(0xff4DB7FF), color2: Color(0xff3E7DFF)),
                  ],
                ),
                const SizedBox(height: 20),
                // Banner Image
                Container(
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/home_discount_image.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                // Deals of the Day
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deals of the Day',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const Text(
                      'More',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff006AFF),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                // Products Grid
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ProductCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Category Button Widget
class CategoryButton extends StatelessWidget {
  final String category;
  final Color color1;
  final Color color2;

  const CategoryButton({
    required this.category,
    required this.color1,
    required this.color2,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          category,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

// Product Card Widget
class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/product_image.png',
            height: 100,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 10),
          const Text('Accu-check Active Test Strip'),
          const SizedBox(height: 5),
          const Text('Rs.112', style: TextStyle(fontWeight: FontWeight.bold)),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                decoration: BoxDecoration(
                  color: const Color(0xffFFDC00),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text('★ 2'),
              ),
              const Icon(Icons.add_shopping_cart, color: Color(0xff006AFF)),
            ],
          ),
        ],
      ),
    );
  }
}
