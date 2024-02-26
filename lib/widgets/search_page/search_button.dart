import 'package:bibiptrip_route_client/bloc/get_routes/get_routes_bloc.dart';
import 'package:bibiptrip_route_client/bloc/get_routes/route_request_view_model_cubit.dart';
import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
            height: 56,
            child: BlocBuilder<RouteRequestCubit, RouteRequestViewModel>(
              builder: (context, state) {
                return FilledButton(
                  style: FilledButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                  ),
                  onPressed: () async {
                    DateTime? date = await _showDatePickerDialog(context);
                    if (date != null) {
                      // ignore: use_build_context_synchronously
                      _addGetRoutesBlocEvent(date, context);
                    }
                  },
                  child: const Text("Найти"),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Future<DateTime?> _showDatePickerDialog(BuildContext context) async {
    return await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
  }

void _addGetRoutesBlocEvent(DateTime date, BuildContext context) {

  // Update date in cubit
  BlocProvider.of<RouteRequestCubit>(context).updateDate(date);

  // Get state from cubit 
  final request = BlocProvider.of<RouteRequestCubit>(context).state;

  // Add event to bloc
  BlocProvider.of<GetRoutesBloc>(context).add(
    GetRoutesSearchInitiated(request: request)
  );

}
}
