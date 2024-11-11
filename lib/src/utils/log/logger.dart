import 'package:flutter/cupertino.dart';
import 'package:quick_log/quick_log.dart';

/// Logger class.
class Log {
  /// Logs a build.
  Log.build(String name) {
    const Logger('🏗️', 'build').debug('$name build');
  }

  /// Logs an action.
  Log.action(String action) {
    const Logger('🚀', 'action').info(action);
  }

  /// Logs errors.
  Log.error(String reason) {
    const Logger('🚨', 'error').error(reason);
  }
}

/// Logs a build.
void logBuild(BuildContext context) {
  const Logger('🏗️', 'build').debug('${context.widget.runtimeType} build');
}

/// Logs an action.
void logAction(String action) {
  const Logger('🚀', 'action').info(action);
}

/// Logs errors.
void logError(String reason, {bool includeStackTrace = true}) {
  const Logger('🚨', 'error').error(
    reason,
    includeStackTrace: includeStackTrace,
  );
}

/// Log information.
void logInfo(String info) {
  const Logger('ℹ️', 'info').info(info);
}
