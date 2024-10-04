import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:impostor/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';

part 'ez_sidebar_header_data.codegen.freezed.dart';

/// A data model representing the header section of the sidebar.
@freezed
class EzSidebarHeaderData with _$EzSidebarHeaderData {
  /// A data model representing the header section of the sidebar.
  const factory EzSidebarHeaderData({
    required String appName,
    required VoidCallback onTap,
    required String? avatarUrl,
    required List<EzSidebarPopoverItemData> items,
  }) = _EzSidebarHeaderData;
}
