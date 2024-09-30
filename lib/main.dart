import 'package:impostor/bootstrap.dart';
import 'package:impostor/src/features/app.dart';
import 'package:quick_log/quick_log.dart';

void main() {
  Logger.writer = const ConsolePrinter(
    exceptTags: [],
  );
  bootstrap(() => const App());
}
