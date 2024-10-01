// ez_sidebar_header.dart
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_icon/ez_icon.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_header_data.codegen.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

/// A [EzSidebarHeader] widget that displays the header section of the sidebar.
///
/// This widget uses [EzSidebarHeaderData] to display the app name and logo.
class EzSidebarHeader extends StatelessWidget {
  /// Factory constructor that creates [EzSidebarHeaderData] from parameters.
  factory EzSidebarHeader({
    Key? key,
    required String appName,
    required VoidCallback onTap,
    String? avatarUrl,
  }) {
    return EzSidebarHeader._(
      key: key,
      data: EzSidebarHeaderData(
        appName: appName,
        onTap: onTap,
        avatarUrl: avatarUrl,
      ),
    );
  }

  /// Creates a [EzSidebarHeader] widget.
  const EzSidebarHeader._({
    super.key,
    required EzSidebarHeaderData data,
  }) : _data = data;

  /// The data used to populate the header.
  final EzSidebarHeaderData _data;

  @override
  Widget build(BuildContext context) {
    final imgUrl = _data.avatarUrl;
    final appName = _data.appName;
    final colorScheme = Theme.of(context).colorScheme;

    Widget avatarWidget;
    if (imgUrl != null) {
      avatarWidget = ClipOval(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 0.5,
            ),
            shape: BoxShape.circle,
          ),
          child: Image.network(
            imgUrl,
            width: EzSidebarConsts.avatarSize,
            height: EzSidebarConsts.avatarSize,
            fit: BoxFit.cover,
          ),
        ),
      );
    } else {
      avatarWidget = ClipOval(
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
              child: Icon(
                Icons.apps, // You can customize this icon
                color: Theme.of(context).colorScheme.onPrimary,
                size: EzSidebarConsts.avatarSize / 2,
              ),
            ),
          ),
        ),
      );
    }

    return Padding(
      padding: EzSidebarConsts.horizontalPadding,
      child: _buildClipSmoothRect(
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
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      appName,
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  EzIcon(
                    EzIcons.chevronDownMini,
                    color: Theme.of(context).colorScheme.primary,
                    size: EzSidebarConsts.sidebarItemIconSize,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildClipSmoothRect({required Widget child}) {
    return ClipSmoothRect(
      radius: const SmoothBorderRadius.all(
        SmoothRadius(
          cornerRadius: 10,
          cornerSmoothing: 0.3,
        ),
      ),
      child: child,
    );
  }
}
