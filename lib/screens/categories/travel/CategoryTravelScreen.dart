import 'package:flutter/material.dart';

class CategoryTravelScreen extends StatefulWidget {
  const CategoryTravelScreen({super.key});

  @override
  State<CategoryTravelScreen> createState() => _CategoryTravelScreenState();
}

class _CategoryTravelScreenState extends State<CategoryTravelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TRAVEL",
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
