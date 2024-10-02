import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:impostor/src/shared/ez_icon/ez_icons.dart';

part 'ez_sidebar_item_data.codegen.freezed.dart';

/// A data model representing a sidebar item with text and an optional icon.
@freezed
class EzSidebarItemData with _$EzSidebarItemData {
  const factory EzSidebarItemData.regular({
    required String text,
    required EzIcons? icon,
    required VoidCallback onTap,
  }) = RegularSidebarItemData;

  const factory EzSidebarItemData.heading({
    required String text,
  }) = HeadingSidebarItemData;

  const factory EzSidebarItemData.bottom({
    required String text,
    required EzIcons? icon,
    required VoidCallback onTap,
  }) = BottomSidebarItemData;
}
