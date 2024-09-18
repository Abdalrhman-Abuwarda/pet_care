part of routing_module;

  class RouteService {
  RouteService._();

  static final RouteService instance = RouteService._();
  GlobalKey<NavigatorState> navKey = GlobalKey<NavigatorState>();

  pushNamedWidget(String routeName, { Object? argument}) {
    navKey.currentState?.pushNamed(routeName, arguments: argument);
  }

  pushNamedReplacement(String routeName) {
    navKey.currentState?.pushReplacementNamed(routeName);
  }

  back() {
    navKey.currentState?.pop();
  }

  pushNamedAndRemoveUtils(String routeName) {
    navKey.currentState?.pushNamedAndRemoveUntil(routeName, (route) => false);
  }
}
