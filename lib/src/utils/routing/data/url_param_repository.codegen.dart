import 'package:impostor/src/utils/routing/data/location_provider.codegen.dart';
import 'package:impostor/src/utils/routing/model/url_param.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'url_param_repository.codegen.g.dart';

/// Return the [UrlParams] from the current location.
@riverpod
UrlParams urlParamRepository(UrlParamRepositoryRef ref) {
  final location = ref.watch(locationRepositoryProvider);

  if (location.isEmpty) {
    return UrlParams.empty();
  }
  final parts = location.substring(1).split('/');
  if (parts.length != 2) {
    return UrlParams.empty();
  } else if (['single', 'multi'].contains(parts[0]) == false) {
    return UrlParams.empty();
  }

  bool isOnline(String value) {
    if (value == 'single') {
      return false;
    } else if (value == 'multi') {
      return true;
    }
    throw Exception('Invalid location: $location');
  }

  if (parts.length < 2) {
    throw Exception('Param are called in a wrong location');
  }

  final param = UrlParams(
    isOnline: isOnline(parts[0]),
    id: parts[1],
  );
  return param;
}
