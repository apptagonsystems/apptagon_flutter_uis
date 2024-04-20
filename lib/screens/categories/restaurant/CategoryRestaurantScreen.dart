import 'package:flutter/material.dart';

class CategoryRestaurantScreen extends StatefulWidget {
  const CategoryRestaurantScreen({super.key});

  @override
  State<CategoryRestaurantScreen> createState() =>
      _CategoryRestaurantScreenState();
}

class _CategoryRestaurantScreenState extends State<CategoryRestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RESTAURANT",
          style: TextStyle(
            // fontFamily: AppConstants.fontFamily,
            letterSpacing: 0,
          ),
        ),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              height: 200,
              width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
