import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../modules/counter/view/counter_page.dart';
import '../../modules/test/presenter/test_page.dart';
import '../services/file_picker/file_picker.dart';
import '../services/file_picker/image_picker.dart';

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
    ),
    GoRoute(
      path: '/image_picker',
      name: 'image_picker',
      builder: (BuildContext context, GoRouterState state) {
        return ImagePickerPage();
      },
      routes: <RouteBase>[],
    ),
    GoRoute(
      path: '/file_picker',
      name: 'file_picker',
      builder: (BuildContext context, GoRouterState state) {
        return FilePickerDemo();
      },
      routes: <RouteBase>[],
    )
  ],
);
