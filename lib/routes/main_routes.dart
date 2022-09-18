import 'package:beamer/beamer.dart';
import 'package:stocker/pages/home_page.dart';


class MainRoutes {
  MainRoutes._();
  static const String home = '/';
}

final mainRoutes = BeamerDelegate(
  locationBuilder: RoutesLocationBuilder(
    routes: {
      MainRoutes.home: (context, state, data) => const StockerDashBoard(),
    },
  ),
);