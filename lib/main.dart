import 'package:ez_fit_app/bootstrap.dart';
import 'package:ez_fit_app/src/features/app.dart';
import 'package:quick_log/quick_log.dart';

void main() {
  Logger.writer = const ConsolePrinter(
    exceptTags: [],
  );
  bootstrap(() => const App());
}
