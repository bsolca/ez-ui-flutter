import 'package:flutter/material.dart';

/// Avatar widget.
class EzAvatar extends StatelessWidget {
  /// Avatar widget.
  const EzAvatar({
    super.key,
    this.imageUrl,
    this.isSquare = false,
    this.initials,
    this.alt,
    this.size = 40.0,
    this.fit = BoxFit.cover,
    this.backgroundColor,
    this.textStyle,
  });

  /// URL of the avatar image.
  final String? imageUrl;

  /// Whether the avatar is square or circular.
  final bool isSquare;

  /// User's initials to display when no image is available.
  final String? initials;

  /// Accessibility label.
  final String? alt;

  /// Diameter or side length of the avatar.
  final double size;

  /// How the image should fit within the avatar.
  final BoxFit fit;

  /// Background color when displaying initials.
  final Color? backgroundColor;

  /// Style for the initials text.
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    final borderRadius =
        isSquare ? BorderRadius.circular(8) : BorderRadius.circular(100);

    return Semantics(
      label: alt ?? 'User Avatar',
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: backgroundColor ?? Theme.of(context).primaryColorLight,
          borderRadius: borderRadius,
          border: Border.all(
            color: Colors.black.withOpacity(0.2),
          ),
        ),
        child: ClipRRect(
          borderRadius: borderRadius,
          child: imageUrl != null
              ? Image.network(
                  imageUrl!,
                  fit: fit,
                  errorBuilder: (context, error, stackTrace) {
                    return _buildInitials();
                  },
                )
              : _buildInitials(),
        ),
      ),
    );
  }

  Widget _buildInitials() {
    return Center(
      child: Text(
        initials != null ? initials!.toUpperCase() : '',
        style: textStyle ??
            TextStyle(
              fontSize: size * 0.4,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
