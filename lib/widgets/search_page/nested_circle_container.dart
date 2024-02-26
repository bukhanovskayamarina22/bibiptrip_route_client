import 'package:flutter/material.dart';

// 18 16 8
class NestedCircle extends StatelessWidget {
  final double outer;
  final double middle;
  final double inner; 
  final Color color;
  const NestedCircle({super.key, required this.outer, required this.middle, required this.inner, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: outer,
      height: outer,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: middle,
          height: middle,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: inner,
              height: inner,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}