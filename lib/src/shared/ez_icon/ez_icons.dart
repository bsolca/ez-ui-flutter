/// Private base path for all icons
const String _basePath = 'assets/hero_icons/';

/// EzIcons from HeroIcons
enum EzIcons {
  /// Chevron up mini icon
  chevronUpMini,

  /// Chevron down mini icon
  chevronDownMini,

  /// Home mini icon
  homeMini,

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
    }
  }
}
