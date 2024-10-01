import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ez_sidebar_item_data.codegen.freezed.dart';

/// A data model representing a sidebar item with text and an optional icon.
@freezed
class EzSidebarItemData with _$EzSidebarItemData {
  /// Creates a [EzSidebarItemData] instance.
  const factory EzSidebarItemData({
    /// The text label of the sidebar item.
    required String text,

    /// The path to the SVG icon asset.
    required String iconPath,

    /// onTap VoidCallback
    required VoidCallback onTap,
  }) = _EzSidebarItemData;
}
