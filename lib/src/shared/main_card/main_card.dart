import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:impostor/src/utils/constants/const_layout.dart';
import 'package:impostor/src/utils/extension/list_extension.dart';
import 'package:impostor/src/utils/responsive/presentation/responsive_layout.dart';

/// Main card widget holding content in the center.
class MainCard extends ConsumerWidget {
  /// Main card widget holding content in the center.
  const MainCard({
    super.key,
    this.header,
    required this.body,
    this.rightPanel,
    this.footer,
    this.maxWidth = ConstLayout.maxGameWidthSize,
  });

  /// Max width.
  final double maxWidth;

  /// Header widget.
  final Widget? header;

  /// Child widget.
  final Widget body;

  /// Optional footer widget.
  final Widget? footer;

  /// Optional right panel widget.
  final Widget? rightPanel;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final header = this.header;
    final footer = this.footer;
    final rightPanel = this.rightPanel;

    return Center(
      child: Padding(
        padding: const EdgeInsets.all(
          ConstLayout.spacer,
        ),
        child: ResponsiveLayout(
          medium: (child, _) {
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (header != null)
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: maxWidth,
                    ),
                    child: header,
                  )
                else
                  const SizedBox.shrink(),
                child!,
              ].withSpaceBetween(
                height: ConstLayout.spacer,
              ),
            );
          },
          compact: (child, _) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (header != null) header else const SizedBox.shrink(),
                child!,
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (rightPanel != null) const Divider(height: 0),
                    if (rightPanel != null) rightPanel,
                    if (footer != null) footer,
                  ].withSpaceBetween(
                    height: ConstLayout.spacer,
                  ),
                ),
              ].withSpaceBetween(
                height: ConstLayout.spacer,
              ),
            );
          },
          child: Flexible(
            child: SingleChildScrollView(
              child: ResponsiveLayout(
                compact: (child, __) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    child!,
                  ].withSpaceBetween(
                    height: ConstLayout.spacer,
                  ),
                ),
                medium: (child, __) => ConstrainedBox(
                  constraints: BoxConstraints(
                    maxWidth: maxWidth,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Flexible(
                        flex: 2,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Card(
                              margin: EdgeInsets.zero,
                              child: Padding(
                                padding: const EdgeInsets.all(
                                  ConstLayout.spacer,
                                ),
                                child: child,
                              ),
                            ),
                            if (footer != null)
                              ConstrainedBox(
                                constraints: BoxConstraints(
                                  maxWidth: maxWidth,
                                ),
                                child: footer,
                              )
                          ].withSpaceBetween(
                            height: ConstLayout.spacer,
                          ),
                        ),
                      ),
                      if (rightPanel != null)
                        Flexible(
                          child: Card(
                            margin: EdgeInsets.zero,
                            child: rightPanel,
                          ),
                        ),
                    ].withSpaceBetween(
                      width: ConstLayout.spacer,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: body,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
