import 'package:flutter/material.dart';

class CategoryCharityScreen extends StatefulWidget {
  const CategoryCharityScreen({super.key});

  @override
  State<CategoryCharityScreen> createState() => _CategoryCharityScreenState();
}

class _CategoryCharityScreenState extends State<CategoryCharityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CHARITY & DONATION",
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
