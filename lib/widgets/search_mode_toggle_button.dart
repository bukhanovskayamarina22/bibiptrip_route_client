import 'package:flutter/material.dart';

class SearchModeToggleButton extends StatefulWidget {
  const SearchModeToggleButton({
    super.key,
  });

  @override
  State<SearchModeToggleButton> createState() => _SearchModeToggleButtonState();
}

class _SearchModeToggleButtonState extends State<SearchModeToggleButton> {
  late List<bool> selectedOption;

  @override
  void initState() {
    selectedOption = [true, false];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: ToggleButtons(  
          constraints: const BoxConstraints(
              minHeight: 36, maxHeight: 36, maxWidth: 160, minWidth: 160),
          direction: Axis.horizontal,
          borderColor: Theme.of(context).colorScheme.primary,
          selectedBorderColor: Theme.of(context).colorScheme.primary,
          fillColor: Theme.of(context).colorScheme.primary,
          color: Theme.of(context).colorScheme.secondaryContainer,
          textStyle: Theme.of(context).textTheme.labelLarge,
          borderRadius: const BorderRadius.all(Radius.circular(24)),
          onPressed: (index) {
            setState(() {
              if (index == 0) {
                selectedOption = [true, false];
              } else {
                selectedOption = [false, true];
              }
            });
          },
          isSelected: selectedOption,
          children: [
            Text("Пассажир", style: Theme.of(context).textTheme.labelLarge),
            Text("Водитель",
                style: Theme.of(context).textTheme.labelLarge),
          ]),
    );
  }
}
