import 'package:flutter/material.dart';

class CategoryAuthScreen extends StatefulWidget {
  const CategoryAuthScreen({super.key});

  @override
  State<CategoryAuthScreen> createState() => _CategoryAuthScreenState();
}

class _CategoryAuthScreenState extends State<CategoryAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "AUTHENTICATION",
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
