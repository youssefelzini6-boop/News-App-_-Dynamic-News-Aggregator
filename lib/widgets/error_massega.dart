
import 'package:flutter/material.dart';

class ErrorMassega extends StatelessWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text('Error In data ,Please Try Again',style: TextStyle(fontSize: 50,color: Colors.black45),),
    );
  }
}

