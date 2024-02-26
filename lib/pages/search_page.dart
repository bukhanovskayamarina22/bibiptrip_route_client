import 'package:bibiptrip_route_client/bloc/get_routes/get_routes_bloc.dart';
import 'package:bibiptrip_route_client/bloc/get_routes/route_request_view_model_cubit.dart';
import 'package:bibiptrip_route_client/repository/network_routes_repository.dart';
import 'package:bibiptrip_route_client/view_model/route_request/route_request_view_model.dart';
import 'package:bibiptrip_route_client/widgets/search_page/dashed_vertical_line.dart';
import 'package:bibiptrip_route_client/widgets/search_page/nested_circle_container.dart';
import 'package:bibiptrip_route_client/widgets/paddings.dart';
import 'package:bibiptrip_route_client/widgets/search_page/parcel_indicator.dart';
import 'package:bibiptrip_route_client/widgets/search_page/route_card.dart';
import 'package:bibiptrip_route_client/widgets/search_page/search_button.dart';
import 'package:bibiptrip_route_client/widgets/search_page/search_mode_toggle_button.dart';
import 'package:bibiptrip_route_client/widgets/search_page/select_city_text_field.dart';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';




class SearchPage extends StatefulWidget {
  const SearchPage({
    super.key,
  });

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late RouteRequestViewModel request;

  @override
  void initState() {
    // ignore: prefer_const_constructors
    request = RouteRequestViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => NetworkRoutesRepository(Dio()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => RouteRequestCubit(),
          ),
          BlocProvider(
            create: (context) => GetRoutesBloc(
                RepositoryProvider.of<NetworkRoutesRepository>(context)),
          ),
        ],
        child: BlocBuilder<GetRoutesBloc, GetRoutesState>(
          builder: (context, state) {
            return RefreshIndicator(
              onRefresh: () async {
                BlocProvider.of<GetRoutesBloc>(context).add(
                    GetRoutesSearchInitiated(
                        request:
                            BlocProvider.of<RouteRequestCubit>(context).state));
              },
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: PaddingAll24(
                        child: RouteSearch(),
                        ),
                  ),
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Container(
                      height: 350,
                      decoration: BoxDecoration(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 24, right: 24, left: 24),
                        child: Column(
                          children: [
                            PaddingBottom24(child: SearchButton()),
                            SearchResult(),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: BlocBuilder<GetRoutesBloc, GetRoutesState>(
        builder: (context, state) {
          switch (state) {
            case GetRoutesSuccess():
              if (state.routes == []) {
                return const Center(child: Text("Nothing found"));
              } else {
                return ListView.builder(
                    itemCount: state.routes.length,
                    itemBuilder: (context, index) {
                      return PaddingBottom24(
                          child: RouteCard(
                        route: state.routes[index],
                      ));
                    });
              }

            case GetRoutesLoading():
              return const SizedBox(
                  height: 32, width: 32, child: CircularProgressIndicator());
            case GetRoutesFailure():
              _dialogBuilder(context, state.errorMessage);
              return Center(child: Text(state.errorMessage));
            default:
              return const Center(child: Text("Search result"));
          }
        },
      ),
    );
  }

  Future<void> _dialogBuilder(BuildContext context, String errorMessage) async {
    return WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog<void>(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Theme.of(context).colorScheme.errorContainer,
            title: const Text('Error'),
            content: Text(errorMessage),
            actions: <Widget>[
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    });
  }
}


class RouteSearch extends StatelessWidget {
  const RouteSearch({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Поиск поездок",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            // Don't know which icon is actually used and what it supposed to mean. I'm assuming that this is a app theme icon
            Icon(Icons.brush, color: Theme.of(context).colorScheme.secondary,)
          ],
        ),
        const PaddingTop24(),
        const SearchModeToggleButton(),
        const PaddingTop24(),
        SizedBox(
          child: Row(
            children: [
              Column(
                children: [
                  NestedCircle(
                      outer: 24,
                      middle: 20,
                      inner: 12,
                      color: Theme.of(context).colorScheme.primary),
                  DashedVerticalLine(
                      bigDash: 12,
                      smallDash: 8,
                      bigPadding: 6,
                      smallPadding: 4,
                      color: Theme.of(context).colorScheme.primary),
                  Icon(
                    Icons.location_on,
                    size: 32,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ],
              ),
              const PaddingLeft24(),
              const Flexible(
                child: Column(
                  children: [
                    SelectCityTextField(
                      isDepartureCityField: true,
                    ),
                    PaddingTop24(),
                    SelectCityTextField(
                      isDepartureCityField: false,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        PaddingTop24(
          child: Row(
            children: [
              const ParcelIndicator(),
              const Padding(padding: EdgeInsets.only(left: 12)),
              Text(
                "Передать посылку",
                style: Theme.of(context).textTheme.labelLarge,
              )
            ],
          ),
        )
      ],
    );
  }
}
