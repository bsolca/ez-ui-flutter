import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sidebar_item_data.codegen.freezed.dart';

/// A data model representing a sidebar item with text and an optional icon.
@freezed
class SidebarItemData with _$SidebarItemData {
  /// Creates a [SidebarItemData] instance.
  const factory SidebarItemData({
    /// The text label of the sidebar item.
    required String text,

    /// The path to the SVG icon asset.
    required String iconPath,

    /// onTap VoidCallback
    required VoidCallback onTap,
  }) = _SidebarItemData;
}
