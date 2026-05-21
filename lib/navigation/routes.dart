import 'package:go_router/go_router.dart';
import 'package:ppbl2026/custom_widget/custom_widget.dart';
import 'package:ppbl2026/gesture/gesture_example.dart';
import 'package:ppbl2026/gesture/image_gesture.dart';
import 'package:ppbl2026/navigation/SearchScreen.dart';
import 'package:ppbl2026/navigation/detail.dart';
import 'package:ppbl2026/navigation/nav_go_router.dart';
import 'package:ppbl2026/navigation/nav_rail.dart';
import 'package:ppbl2026/navigation/nav_sidebar.dart';
import 'package:ppbl2026/sqlite/view/read_data.dart';
import 'package:ppbl2026/theme/adaptive_layout.dart';
import 'package:ppbl2026/theme/custom_theme.dart';

final GoRouter routeList = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const GestureExample(),
    ),
    // Route with a path parameter (:id)
    GoRoute(
      path: '/details/:id',
      builder: (context, state) {
        final id = state.pathParameters['id']!;
        return DetailScreen(id: id);
      },
    ),

    GoRoute(
      // /search?q=keyword&sort=kriteria
      path: '/search',
      builder: (context, state) {
        final searchTerm = state.uri.queryParameters['q'] ?? '';
        final sortBy = state.uri.queryParameters['sort'] ?? 'relevance';

        return Searchscreen(query: searchTerm, sort: sortBy);
      },
    ),

    GoRoute(
        path: '/sidebar',
        builder: (context, state){
          return SideBarExample();
        }
    ),

    GoRoute(
      path: '/navrail',
      builder: (context, state){
        return NavRail();
      }
    ),


  ],
);