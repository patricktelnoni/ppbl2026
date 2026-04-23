import 'package:go_router/go_router.dart';
import 'package:ppbl2026/navigation/SearchScreen.dart';
import 'package:ppbl2026/navigation/detail.dart';
import 'package:ppbl2026/navigation/nav_go_router.dart';
import 'package:ppbl2026/navigation/nav_rail.dart';
import 'package:ppbl2026/navigation/nav_sidebar.dart';

final GoRouter appRoute = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const NavGoRouter(),
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
    GoRoute(
      // /search?q=keyword&sort=kriteria
      path: '/search',
      builder: (context, state) {
        final searchTerm = state.uri.queryParameters['q'] ?? '';
        final sortBy = state.uri.queryParameters['sort'] ?? 'relevance';

        return Searchscreen(query: searchTerm, sort: sortBy);
      },
    ),
  ],
);