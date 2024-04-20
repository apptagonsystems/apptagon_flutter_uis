import 'package:flutter/material.dart';

class CategoryFinancialScreen extends StatefulWidget {
  const CategoryFinancialScreen({super.key});

  @override
  State<CategoryFinancialScreen> createState() =>
      _CategoryFinancialScreenState();
}

class _CategoryFinancialScreenState extends State<CategoryFinancialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FINANCIAL",
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
