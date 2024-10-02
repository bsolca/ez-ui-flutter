import 'dart:ui';

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
  }) = _EzSidebarFooterData;
}
