import 'package:flutter/material.dart';

class CategoryFitnessScreen extends StatefulWidget {
  const CategoryFitnessScreen({super.key});

  @override
  State<CategoryFitnessScreen> createState() => _CategoryFitnessScreenState();
}

class _CategoryFitnessScreenState extends State<CategoryFitnessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FITNESS",
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
