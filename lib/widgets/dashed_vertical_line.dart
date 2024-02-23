import 'package:bibiptrip_route_client/widgets/paddings.dart';
import 'package:flutter/material.dart';

class DashedVerticalLine extends StatelessWidget {
  const DashedVerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaddingTop8(
          child: Container(
            width: 1,
            height: 8,
            color: Theme.of(context)
                .colorScheme
                .secondaryContainer, // Replace with your desired secondary container color
          ),
        ),
        PaddingTop8(
          child: Container(
            width: 1,
            height: 12,
            color: Theme.of(context)
                .colorScheme
                .secondaryContainer, // Replace with your desired secondary container color
          ),
        ),
        PaddingTop8(
          child: Container(
            width: 1,
            height: 8,
            color: Theme.of(context)
                .colorScheme
                .secondaryContainer, // Replace with your desired secondary container color
          ),
        ),
        const PaddingTop8()
      ],
    );
  }
}