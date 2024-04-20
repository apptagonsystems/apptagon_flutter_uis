import 'package:flutter/material.dart';

class CategoryNewsScreen extends StatefulWidget {
  const CategoryNewsScreen({super.key});

  @override
  State<CategoryNewsScreen> createState() => _CategoryNewsScreenState();
}

class _CategoryNewsScreenState extends State<CategoryNewsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "NEWS",
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
