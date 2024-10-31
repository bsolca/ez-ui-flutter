import 'package:ez_fit_app/src/utils/responsive/screen_size_pod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Top class that listen the screen size and set the pod.
class ResponsiveBuilder extends LayoutBuilder {
  /// Top class that listen the screen size and set the pod.
  ResponsiveBuilder({
    super.key,
    required Widget child,
    required WidgetRef widgetRef,
  }) : super(
          builder: (context, constraints) {
            widgetRef.read(screenSizePod.notifier).update(constraints.biggest);
            return child;
          },
        );
}
