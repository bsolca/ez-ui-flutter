// ez_sidebar_footer.dart
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_icon/ez_icon.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_footer_data.codegen.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// A [EzSidebarFooter] widget that displays the footer section of the sidebar.
///
/// This widget uses [EzSidebarFooterData] to display user information.
class EzSidebarFooter extends StatelessWidget {
  /// Factory constructor that creates [EzSidebarFooterData] from parameters.
  factory EzSidebarFooter({
    Key? key,
    required String name,
    required String email,
    required VoidCallback onTap,
    String? avatarUrl,
  }) {
    return EzSidebarFooter._(
      key: key,
      data: EzSidebarFooterData(
        name: name,
        email: email,
        onTap: onTap,
        avatarUrl: avatarUrl,
      ),
    );
  }

  /// Creates a [EzSidebarFooter] widget.
  ///
  /// This const constructor takes the [_data] parameter directly.
  const EzSidebarFooter._({
    super.key,
    required EzSidebarFooterData data,
  }) : _data = data;

  /// The data used to populate the footer.
  final EzSidebarFooterData _data;

  @override
  Widget build(BuildContext context) {
    final imgUrl = _data.avatarUrl;
    final name = _data.name;
    final colorScheme = Theme.of(context).colorScheme;

    String getInitials(String name) {
      final nameParts = name.split(' ');
      if (nameParts.length == 1) {
        return nameParts[0]
            .substring(0, min(2, nameParts[0].length))
            .toUpperCase();
      } else {
        return nameParts.take(2).map((part) => part[0].toUpperCase()).join();
      }
    }

    Widget avatarWidget;
    if (imgUrl != null) {
      avatarWidget = ClipSmoothRect(
        radius: const SmoothBorderRadius.all(
          SmoothRadius(
            cornerRadius: 10,
            cornerSmoothing: 0.3,
          ),
        ),
        child: Image.network(
          imgUrl,
          width: EzSidebarConsts.avatarSize,
          height: EzSidebarConsts.avatarSize,
          fit: BoxFit.cover,
        ),
      );
    } else {
      avatarWidget = ClipSmoothRect(
        radius: const SmoothBorderRadius.all(
          SmoothRadius(
            cornerRadius: 10,
            cornerSmoothing: 0.3,
          ),
        ),
        child: InkWell(
          onTap: _data.onTap,
          overlayColor: WidgetStateProperty.all(
            EzSidebarConsts.getSidebarItemOverlayColor(colorScheme),
          ),
          child: Container(
            width: EzSidebarConsts.avatarSize,
            height: EzSidebarConsts.avatarSize,
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Text(
                getInitials(name),
                style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimary,
                  fontSize: EzSidebarConsts.avatarSize / 2,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipSmoothRect(
        radius: const SmoothBorderRadius.all(
          SmoothRadius(
            cornerRadius: 10,
            cornerSmoothing: 0.3,
          ),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: _data.onTap,
            overlayColor: WidgetStateProperty.all(
              EzSidebarConsts.getSidebarItemOverlayColor(colorScheme),
            ),
            child: Padding(
              padding: EzSidebarConsts.footerPadding,
              child: Row(
                children: [
                  avatarWidget,
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _data.name,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        Text(
                          _data.email,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  EzIcon(
                    EzIcons.chevronUpMini,
                    color: Theme.of(context).colorScheme.primary,
                    size: 24,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
