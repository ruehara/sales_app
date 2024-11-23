import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../modules/counter/view/counter_page.dart';
import '../../modules/test/presenter/test_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/test',
  routes: <RouteBase>[
    GoRoute(
      path: '/test',
      name: 'test',
      builder: (BuildContext context, GoRouterState state) {
        return const TestPage();
      },
      routes: <RouteBase>[],
    ),
    GoRoute(
      path: '/counter',
      name: 'counter',
      builder: (BuildContext context, GoRouterState state) {
        return const CounterPage();
      },
      routes: <RouteBase>[],
    )
  ],
);
