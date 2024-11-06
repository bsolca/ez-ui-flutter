import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_provider.codegen.g.dart';

/// Location url provider set in the [goRouterProvider].
@Riverpod(keepAlive: true)
class LocationRepository extends _$LocationRepository {
  @override
  String build() {
    return '/';
  }

  /// Set the location url.
  String set(String location) {
    return state = location;
  }
}
