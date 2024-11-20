import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../modules/counter/view/counter_page.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: <RouteBase>[
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) {
        return const CounterPage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'forgot_password',
          builder: (BuildContext context, GoRouterState state) {
            return const CounterPage();
          },
        ),
      ],
    )
  ],
);
