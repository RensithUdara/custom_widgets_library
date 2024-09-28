import 'package:flutter/material.dart';

/// A customizable card to display content in a styled format.
class CustomCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double? elevation;

  const CustomCard({
    Key? key,
    required this.child,
    this.color = Colors.white,
    this.elevation = 2.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }
}
