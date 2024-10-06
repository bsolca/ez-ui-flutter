// ignore_for_file: public_member_api_docs

/// Private base path for all flags
const String _flagBasePath = 'assets/flag_icons/';

/// EzIcons from HeroIcons
enum EzIcons {
  flagFr,
  flagUs,
}

/// Extension to add a `path` getter for EzIcons
extension EzIconPath on EzIcons {
  /// Returns the path for the icon
  String get path {
    switch (this) {
      case EzIcons.flagFr:
        return '${_flagBasePath}fr.svg';
      case EzIcons.flagUs:
        return '${_flagBasePath}us.svg';
    }
  }
}
