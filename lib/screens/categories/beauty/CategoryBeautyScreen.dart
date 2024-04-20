import 'package:flutter/material.dart';

class CategoryBeautyScreen extends StatefulWidget {
  const CategoryBeautyScreen({super.key});

  @override
  State<CategoryBeautyScreen> createState() => _CategoryBeautyScreenState();
}

class _CategoryBeautyScreenState extends State<CategoryBeautyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BEAUTY & SALON",
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
