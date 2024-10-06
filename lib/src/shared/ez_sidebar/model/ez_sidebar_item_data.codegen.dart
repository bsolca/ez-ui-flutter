import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ez_sidebar_item_data.codegen.freezed.dart';

/// A data model representing a sidebar item with text and an optional icon.
@freezed
class EzSidebarItemData with _$EzSidebarItemData {
  /// Regular sidebar item data.
  const factory EzSidebarItemData.regular({
    IconData? icon,
    String? svgPath,
    required String text,
    required VoidCallback onTap,
  }) = RegularSidebarItemData;

  /// Heading sidebar item data.
  const factory EzSidebarItemData.heading({
    required String text,
  }) = HeadingSidebarItemData;

  /// Bottom sidebar item data, can not be selected.
  const factory EzSidebarItemData.bottom({
    IconData? icon,
    String? svgPath,
    required String text,
    required VoidCallback onTap,
  }) = BottomSidebarItemData;
}
