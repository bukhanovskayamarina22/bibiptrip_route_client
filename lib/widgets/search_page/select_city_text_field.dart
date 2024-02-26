import 'package:bibiptrip_route_client/bloc/get_routes/route_request_view_model_cubit.dart';
import 'package:bibiptrip_route_client/main.dart';
import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

class SelectCityTextField extends StatefulWidget {
  final bool isDepartureCityField;
  const SelectCityTextField({super.key, required this.isDepartureCityField});

  @override
  State<SelectCityTextField> createState() => _SelectCityTextFieldState();
}

class _SelectCityTextFieldState extends State<SelectCityTextField> {
  late final TextEditingController controller;
   late final FocusNode focusNode;

  @override
  void initState() {
    controller = TextEditingController();
    focusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          color: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.2)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlocBuilder<RouteRequestCubit, RouteRequestViewModel>(
          builder: (context, state) {
            return TypeAheadField<Cities>(
              controller: controller,
              focusNode: focusNode,
              suggestionsCallback: (search) => Cities.values,
              builder: (context, controller, focusNode) {
                return TextFormField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: controller,
                  focusNode: focusNode,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.my_location_outlined, size: 24,),
                    suffixIconColor: Theme.of(context).colorScheme.primary,
                    
                      border: InputBorder.none,
                      hintText: widget.isDepartureCityField ? "Откуда" : "Куда",
                      hintStyle: Theme.of(context).textTheme.labelMedium!.copyWith(color: Theme.of(context).colorScheme.secondaryContainer)),
                );
              },
              itemBuilder: (context, city) {
                return ListTile(
                  title: Text(city.displayName),
                );
              },
              onSelected: (city) {
                setState(() {
                  controller.text = city.displayName;
                });
                widget.isDepartureCityField
                    ? BlocProvider.of<RouteRequestCubit>(context)
                        .updateDepartureCity(city.displayName)
                    : BlocProvider.of<RouteRequestCubit>(context)
                        .updateDestinationCity(city.displayName);
                focusNode.unfocus(); 
                FocusScope.of(context).requestFocus(FocusNode());
              },
            );
          },
        ),
      ),
    );
  }
}
