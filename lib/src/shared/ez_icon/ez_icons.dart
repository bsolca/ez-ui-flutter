// ignore_for_file: public_member_api_docs

/// Private base path for all icons
const String _basePath = 'assets/hero_icons/';

/// Private base path for all flags
const String _flagBasePath = 'assets/flags_icons/';

/// EzIcons from HeroIcons
enum EzIcons {
  chevronUpMini,
  chevronDownMini,
  homeMini,

  // Flags
  flagFr,
  flagUs,

  // Add more icons here as needed
}

/// Extension to add a `path` getter for EzIcons
extension EzIconPath on EzIcons {
  /// Returns the path for the icon
  String get path {
    switch (this) {
      case EzIcons.chevronUpMini:
        return '${_basePath}chevron-up-mini.svg';
      case EzIcons.chevronDownMini:
        return '${_basePath}chevron-down-mini.svg';
      case EzIcons.homeMini:
        return '${_basePath}home-mini.svg';

      // Flags
      case EzIcons.flagFr:
        return '${_flagBasePath}fr.svg';
      case EzIcons.flagUs:
        return '${_flagBasePath}us.svg';

      // Add more icons here as needed
    }
  }
}
