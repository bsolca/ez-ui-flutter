// ignore_for_file: public_member_api_docs

/// Private base path for all icons
const String _basePath = 'assets/hero_icons/';

/// Private base path for all flags
const String _flagBasePath = 'assets/flag_icons/';

/// EzIcons from HeroIcons
enum EzIcons {
  adjustmentsHorizontalSolid,
  chevronDownSolid,
  chevronUpSolid,
  computerDesktopSolid,
  flagFr,
  flagUs,
  homeSolid,
  moonSolid,
  sunSolid,
  userCircleSolid,
  userSolid,
  usersSolid,
  userGroupSolid,
}

/// Extension to add a `path` getter for EzIcons
extension EzIconPath on EzIcons {
  /// Returns the path for the icon
  String get path {
    switch (this) {
      case EzIcons.adjustmentsHorizontalSolid:
        return '${_basePath}adjustments-horizontal-solid.svg';
      case EzIcons.chevronDownSolid:
        return '${_basePath}chevron-down-solid.svg';
      case EzIcons.chevronUpSolid:
        return '${_basePath}chevron-up-solid.svg';
      case EzIcons.computerDesktopSolid:
        return '${_basePath}computer-desktop-solid.svg';
      case EzIcons.homeSolid:
        return '${_basePath}home-solid.svg';
      case EzIcons.moonSolid:
        return '${_basePath}moon-solid.svg';
      case EzIcons.sunSolid:
        return '${_basePath}sun-solid.svg';
      case EzIcons.userCircleSolid:
        return '${_basePath}user-circle-solid.svg';
      case EzIcons.userSolid:
        return '${_basePath}user-solid.svg';
      case EzIcons.usersSolid:
        return '${_basePath}users-solid.svg';
      case EzIcons.userGroupSolid:
        return '${_basePath}user-group-solid.svg';

      // Flags
      case EzIcons.flagFr:
        return '${_flagBasePath}fr.svg';
      case EzIcons.flagUs:
        return '${_flagBasePath}us.svg';
    }
  }
}