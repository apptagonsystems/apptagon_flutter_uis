import 'package:flutter/material.dart';

class CategoryHealthScreen extends StatefulWidget {
  const CategoryHealthScreen({super.key});

  @override
  State<CategoryHealthScreen> createState() => _CategoryHealthScreenState();
}

class _CategoryHealthScreenState extends State<CategoryHealthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HEALTH",
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
