
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DashedVerticalLine extends StatelessWidget {
  final double bigDash; 
  final double smallDash; 
  final double bigPadding; 
  final double smallPadding;
  final Color color;
  const DashedVerticalLine({super.key, required this.bigDash, required this.smallDash, required this.bigPadding, required this.smallPadding, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: bigPadding),
          child: Dash(color: color, height: smallDash)
        ),
        Padding(
          padding: EdgeInsets.only(top: smallPadding),
          child: Dash(color: color, height: bigDash)
        ),
        Padding(
          padding: EdgeInsets.only(top: smallPadding),
          child: Dash(color: color, height: smallDash,),
        ),
        Padding(padding: EdgeInsets.only(top: bigPadding),),
      ],
    );
  }
}

class Dash extends StatelessWidget {
  final double height;
  const Dash({
    super.key,
    required this.color, required this.height,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1,
      height: height,
      color: color, 
    );
  }
}

