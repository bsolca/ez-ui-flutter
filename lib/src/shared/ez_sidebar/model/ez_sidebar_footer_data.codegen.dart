import 'dart:ui';

import 'package:ez_fit_app/src/shared/ez_sidebar/model/ez_sidebar_popover_item_data.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ez_sidebar_footer_data.codegen.freezed.dart';

/// A data model representing the footer section of the sidebar.
@freezed
class EzSidebarFooterData with _$EzSidebarFooterData {
  /// A data model representing the footer section of the sidebar.
  const factory EzSidebarFooterData({
    required String name,
    required String email,
    required VoidCallback onTap,
    required String? avatarUrl,
    required List<EzSidebarPopoverItemData> items,
  }) = _EzSidebarFooterData;
}
