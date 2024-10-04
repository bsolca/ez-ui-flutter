import 'dart:math';
import 'package:flutter/material.dart';
import 'package:impostor/src/shared/ez_icon/ez_icon.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';
import 'package:impostor/src/shared/ez_sidebar/ez_sidebar_consts.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_footer_data.codegen.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';
import 'package:impostor/src/shared/squircle/squircle.dart';

import 'ez_sidebar_popover.dart';

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
    required String? avatarUrl,
    required List<EzSidebarPopoverItemData> items,
  }) {
    return EzSidebarFooter._(
      key: key,
      data: EzSidebarFooterData(
        name: name,
        email: email,
        onTap: onTap,
        avatarUrl: avatarUrl,
        items: items,
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

    Widget avatarWidget;
    if (imgUrl != null) {
      avatarWidget = _buildClipSmoothRect(
        child: Image.network(
          imgUrl,
          width: EzSidebarConsts.avatarSize,
          height: EzSidebarConsts.avatarSize,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return _buildFallbackAvatar(context, name);
          },
        ),
      );
    } else {
      avatarWidget = _buildFallbackAvatar(context, name);
    }

    final menuController = MenuController();

    return Padding(
      padding: EzSidebarConsts.horizontalPadding,
      child: _buildClipSmoothRect(
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () {
              _data.onTap();
              if (menuController.isOpen) {
                menuController.close();
              } else {
                menuController.open();
              }
            },
            overlayColor: WidgetStateProperty.all(
              EzSidebarConsts.getSidebarItemOverlayColor(colorScheme),
            ),
            child: EzSidebarPopover(
              items: _data.items,
              controller: menuController,
              offset: EzSidebarConsts.popoverOffset,
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
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            _data.email,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ],
                      ),
                    ),
                    EzIcon(
                      EzIcons.chevronUpSolid,
                      color: colorScheme.primary,
                      size: EzSidebarConsts.sidebarItemIconSize,
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

  Widget _buildFallbackAvatar(BuildContext context, String name) {
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

    return _buildClipSmoothRect(
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
    );
  }
}
