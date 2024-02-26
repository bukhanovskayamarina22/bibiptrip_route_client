import 'package:flutter/material.dart';

class DriverAvatar extends StatelessWidget {
  const DriverAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      width: 42,
      height: 42,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: const Placeholder(),
    );
  }
}