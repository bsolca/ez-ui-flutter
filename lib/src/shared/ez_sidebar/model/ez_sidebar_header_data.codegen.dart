import 'dart:ui';

import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ez_sidebar_header_data.codegen.freezed.dart';

/// A data model representing the header section of the sidebar.
@freezed
class EzSidebarHeaderData with _$EzSidebarHeaderData {
  /// A data model representing the header section of the sidebar.
  const factory EzSidebarHeaderData({
    required String appName,
    required String? avatarUrl,
    required List<EzSidebarPopoverItemData> items,
  }) = _EzSidebarHeaderData;
}
