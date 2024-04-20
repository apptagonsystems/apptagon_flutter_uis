import 'package:flutter/material.dart';

class CategoryRentalScreen extends StatefulWidget {
  const CategoryRentalScreen({super.key});

  @override
  State<CategoryRentalScreen> createState() => _CategoryRentalScreenState();
}

class _CategoryRentalScreenState extends State<CategoryRentalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "RENTAL",
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
