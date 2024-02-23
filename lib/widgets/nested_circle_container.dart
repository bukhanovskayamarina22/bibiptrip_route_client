import 'package:flutter/material.dart';

class NestedCircleContainer extends StatelessWidget {
  const NestedCircleContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18.0,
      height: 18.0,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondaryContainer,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Container(
          width: 16.0,
          height: 16.0,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            shape: BoxShape.circle,
          ),
          child: Center(
            child: Container(
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
}