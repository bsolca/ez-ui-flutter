import 'package:ez_fit_app/src/utils/localization/app_local.codegen.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_name_controller.codegen.g.dart';

/// Returns the language name for the given language code.
@riverpod
String localNameController(Ref ref, String tag) {
  final loc = ref.watch(appLocalProvider);

  switch (tag) {
    case 'en':
      return loc.english;
    case 'fr':
      return loc.french;
    default:
      logError('Unknown language code: $tag');
      return tag;
  }
}
