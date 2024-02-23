import 'package:flutter/material.dart';

class ParcelIndicator extends StatefulWidget {
  const ParcelIndicator({
    super.key,
  });

  @override
  State<ParcelIndicator> createState() => _ParcelIndicatorState();
}

class _ParcelIndicatorState extends State<ParcelIndicator> {
  late bool isSelected;

  @override
  void initState() {
    isSelected = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 18,
        width: 18,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            shape: BoxShape.circle),
        child: LayoutBuilder(builder: (_, __) {
          return isSelected
              ? Container(
                  height: 6,
                  width: 6,
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      shape: BoxShape.circle),
                )
              : const SizedBox.shrink();
        }),
      ),
    );
  }
}