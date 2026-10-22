import 'package:flutter/material.dart';

class CirculerLoadingWidget extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 100),
          child: CircularProgressIndicator(color: Colors.black),
        ),
      ),
    );
  }
}
