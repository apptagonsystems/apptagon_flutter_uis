import 'package:flutter/material.dart';

class CategorySocialScreen extends StatefulWidget {
  const CategorySocialScreen({super.key});

  @override
  State<CategorySocialScreen> createState() => _CategorySocialScreenState();
}

class _CategorySocialScreenState extends State<CategorySocialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "SOCIAL",
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
