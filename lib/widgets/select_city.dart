import 'dart:ffi';

import 'package:bibiptrip_route_client/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SelectCity extends StatefulWidget {
  final String hint;
  const SelectCity({super.key, required this.hint});

  @override
  State<SelectCity> createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {
  late final TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        color: Theme.of(context).colorScheme.secondaryContainer
      ),
      child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TypeAheadField<Cities>(
              controller: controller,
              suggestionsCallback: (search) => Cities.values,
              builder: (context, controller, focusNode) {
                return TextField(
                  textAlignVertical: TextAlignVertical.center,
                    controller: controller,
                    focusNode: focusNode,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: widget.hint, 
                      hintStyle: Theme.of(context).textTheme.labelMedium
                      
                    ));
              },
              itemBuilder: (context, city) {
                return ListTile(
                  title: Text(city.toString()),
                );
              },
              onSelected: (city) {
                setState(() {
                  controller.text = city.toString();
                });
                
              },
            )
          ),
    );

  }
}
