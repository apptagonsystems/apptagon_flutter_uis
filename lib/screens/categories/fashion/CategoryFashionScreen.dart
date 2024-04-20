import 'package:flutter/material.dart';

class CategoryFashionScreen extends StatefulWidget {
  const CategoryFashionScreen({super.key});

  @override
  State<CategoryFashionScreen> createState() => _CategoryFashionScreenState();
}

class _CategoryFashionScreenState extends State<CategoryFashionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FASHION",
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
