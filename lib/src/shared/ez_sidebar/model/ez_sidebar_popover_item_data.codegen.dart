import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';

part 'ez_sidebar_popover_item_data.codegen.freezed.dart';

/// A data model representing a sidebar item with text and an optional icon.
@freezed
class EzSidebarPopoverItemData with _$EzSidebarPopoverItemData {
  /// Regular sidebar item data.
  const factory EzSidebarPopoverItemData.regular({
    required String text,
    required EzIcons? icon,
    required VoidCallback onTap,
  }) = EzRegularSidebarPopoverItemData;

  /// Separator sidebar item data.
  const factory EzSidebarPopoverItemData.separator() =
      EzSeparatorSidebarPopoverItemData;
}
