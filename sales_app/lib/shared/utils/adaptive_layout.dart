import 'package:flutter/material.dart';

class AdaptiveStatelessLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const AdaptiveStatelessLayout({
    super.key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return mobileBody;
        } else if (constraints.maxWidth < 1100) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}

abstract class AdaptiveStatefulLayout extends StatefulWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  final String title;

  const AdaptiveStatefulLayout(
      {super.key,
      required this.mobileBody,
      required this.tabletBody,
      required this.desktopBody,
      required this.title});

  @override
  State<AdaptiveStatefulLayout> createState() => _AdaptiveStatefulLayout();
}

class _AdaptiveStatefulLayout extends State<AdaptiveStatefulLayout> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 500) {
          return widget.mobileBody;
        } else if (constraints.maxWidth < 1100) {
          return widget.tabletBody;
        } else {
          return widget.desktopBody;
        }
      },
    );
  }
}
