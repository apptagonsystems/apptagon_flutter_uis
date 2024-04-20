import 'package:flutter/material.dart';

class CategoryTaxiScreen extends StatefulWidget {
  const CategoryTaxiScreen({super.key});

  @override
  State<CategoryTaxiScreen> createState() => _CategoryTaxiScreenState();
}

class _CategoryTaxiScreenState extends State<CategoryTaxiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TAXI",
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
