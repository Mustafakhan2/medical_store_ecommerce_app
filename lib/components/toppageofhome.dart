import 'package:ecommerce_app/components/belowcategoriesrow.dart';
import 'package:ecommerce_app/components/drawer.dart';
import 'package:ecommerce_app/components/products.dart';
import 'package:flutter/material.dart';

class QuickMedicalStore extends StatefulWidget {
  const QuickMedicalStore({super.key});

  @override
  State<QuickMedicalStore> createState() => _QuickMedicalStoreState();
}

class _QuickMedicalStoreState extends State<QuickMedicalStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerCustom(),
      backgroundColor: const Color.fromARGB(255, 246, 243, 243),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header Section
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
                            Builder(builder: (context) {
                              return GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  child: const CircleAvatar(
                                    backgroundImage:
                                        AssetImage('assets/images/myself.png'),
                                    radius: 30,
                                  ),
                                ),
                              );
                            }),
                            const SizedBox(width: 10),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Hi, Mustafa',
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
                        const Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(Icons.notifications, color: Colors.white),
                              Icon(Icons.shopping_bag, color: Colors.white),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Search Medicine & Healthcare products',
                        prefixIcon:
                            const Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Categories and Banner Section
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          child: const Text(
                            'Top Categories',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            BelowCateroriesRow(
                              categorytext: 'Dental',
                              Color1: Color(0xffFF9598),
                              Color2: Color(0xffFF70A7),
                            ),
                            BelowCateroriesRow(
                              categorytext: 'Wellness',
                              Color1: Color(0xff19E5A5),
                              Color2: Color(0xff15BD92),
                            ),
                            BelowCateroriesRow(
                              categorytext: 'Homeo',
                              Color1: Color(0xffFFC06F),
                              Color2: Color(0xffFF793A),
                            ),
                            BelowCateroriesRow(
                              categorytext: 'Eye care',
                              Color1: Color(0xff4DB7FF),
                              Color2: Color(0xff3E7DFF),
                            )
                          ],
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: 400,
                          child: Image.asset(
                              'assets/images/home_discount_image.png'),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
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
                        ),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      ProductCard(),
                      ProductCard(),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
