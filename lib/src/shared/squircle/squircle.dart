/// Library for smooth corners, borders with customizable radii and alignment.
///
/// This library offers the following components:
/// 
/// - [ClipSmoothRect]: A widget to clip child widgets with smooth, rounded
///   corners defined by a [SmoothRectangleBorder].
/// - [SmoothBorderRadius]: A flexible class to define corner radii with smooth
///   transitions for each corner of a rectangle.
/// - [SmoothRadius]: A class to specify a radius with customizable smoothing,
///   allowing fine control over rounded corners.
/// - [SmoothRectangleBorder]: A border class that supports smooth, customizable
///   corner radii and various border alignments, including inside, center, or
///   outside of the shape's edge.
library squircle;

export 'src/clip_smooth_rect.dart';
export 'src/smooth_border_radius.dart';
export 'src/smooth_radius.dart';
export 'src/smooth_rectangle_border.dart';
