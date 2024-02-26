import 'package:bibiptrip_route_client/view_model/route/route_view_model.dart';
import 'package:bibiptrip_route_client/widgets/search_page/dashed_vertical_line.dart';
import 'package:bibiptrip_route_client/widgets/search_page/driver_avatar.dart';
import 'package:bibiptrip_route_client/widgets/search_page/nested_circle_container.dart';
import 'package:bibiptrip_route_client/widgets/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_layout_grid/flutter_layout_grid.dart';

class RouteCard extends StatelessWidget {
  final RouteViewModel route;
  const RouteCard({
    super.key,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
      child: Padding(
        padding: EdgeInsets.all(12),
        child: SizedBox(
          height: 168,
          child: LayoutGrid(
            rowGap: 24,
            gridFit: GridFit.expand,
            columnSizes: [1.fr, 3.fr, 2.fr],
            rowSizes: [1.fr, 1.fr, 1.fr],
            children: [
              const GridPlacement(
                columnStart: 0,
                columnSpan: 1,
                rowStart: 0,
                rowSpan: 1,
                child: DriverAvatar(),
              ),
              GridPlacement(
                  columnStart: 0,
                  columnSpan: 1,
                  rowStart: 1,
                  rowSpan: 2,
                  child: SizedBox(
                    // same as the diameter of the DriverAvatar
                    width: 42,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        NestedCircle(outer: 18, middle: 15, inner: 8, color: Theme.of(context).colorScheme.secondary,),
                        DashedVerticalLine(
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                          bigDash: 10,
                          bigPadding: 8,
                          smallDash: 6,
                          smallPadding: 4,
                        ),
                        NestedCircle(outer: 18, middle: 15, inner: 8, color: Theme.of(context).colorScheme.secondary,),
                      ],
                    ),
                  )),
              GridPlacement(
                  columnStart: 1,
                  columnSpan: 1,
                  rowStart: 0,
                  rowSpan: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: RouteCardData(
                        title: route.driver,
                        subtitle: route.car,
                        additionalInfo: route.price),
                  )),
              GridPlacement(
                  columnStart: 1,
                  columnSpan: 2,
                  rowStart: 1,
                  rowSpan: 1,
                  child: Column(
                    children: [
                      PaddingLeft4(
                        child: RouteCardData(
                            title: route.departureCity,
                            subtitle: route.departureDate,
                            additionalInfo: route.departureLocation),
                      ),
                    ],
                  )),
              GridPlacement(
                  columnStart: 1,
                  columnSpan: 2,
                  rowStart: 2,
                  rowSpan: 1,
                  child: Column(
                    children: [
                      PaddingLeft4(
                        child: RouteCardData(
                            title: route.destinationCity,
                            subtitle: route.arrivalDate,
                            additionalInfo: route.arrivalLocation),
                      ),
                    ],
                  )),
              GridPlacement(
                columnStart: 2,
                columnSpan: 1,
                rowStart: 0,
                rowSpan: 1,
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.topRight,
                  child: const Icon(
                    Icons.bookmark_add_outlined,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RouteCardData extends StatelessWidget {
  final String title;
  final String subtitle;
  final String additionalInfo;

  const RouteCardData({
    super.key,
    required this.title,
    required this.subtitle,
    required this.additionalInfo,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
              child: Text(title,
                  style: Theme.of(context).textTheme.headlineSmall)),
          Row(
            children: [
              Flexible(
                flex: 1,
                child: Text(
                  subtitle,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
              ),
              const PaddingLeft24(),
              Flexible(
                flex: 2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 4,
                      height: 4,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).colorScheme.tertiary),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 8)),
                    Flexible(
                      child: Text(
                        overflow: TextOverflow.fade,
                        softWrap: true,
                        additionalInfo,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
