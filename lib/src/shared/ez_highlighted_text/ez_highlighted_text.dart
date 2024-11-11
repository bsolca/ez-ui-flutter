import 'package:flutter/material.dart';

/// A widget that displays a text with a highlight, and allows selection.
class EzHighlightedText extends StatelessWidget {
  /// A widget that displays a text with a highlight, and allows selection.
  const EzHighlightedText(
    this.text, {
    super.key,
    required this.highlight,
    this.highlightStyle,
    this.maxLines,
  });

  /// Text to display.
  final String text;

  /// Text to highlight.
  final String? highlight;

  /// Highlight style.
  final TextStyle? highlightStyle;

  /// Maximum number of lines to display.
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    final highlight = this.highlight;
    final style = Theme.of(context).textTheme.bodyMedium?.copyWith(
          overflow: TextOverflow.ellipsis,
        );

    if (highlight == null ||
        highlight.isEmpty ||
        !text.toLowerCase().contains(highlight.toLowerCase())) {
      return SelectableText(text, style: style);
    }

    final spans = <TextSpan>[];
    final lowerCaseText = text.toLowerCase();
    final lowerCaseHighlight = highlight.toLowerCase();

    var start = 0;
    int indexOfHighlight;

    while ((indexOfHighlight =
            lowerCaseText.indexOf(lowerCaseHighlight, start)) !=
        -1) {
      if (indexOfHighlight > start) {
        spans.add(
          TextSpan(
            text: text.substring(start, indexOfHighlight),
            style: style,
          ),
        );
      }

      spans.add(
        TextSpan(
          text: text.substring(
            indexOfHighlight,
            indexOfHighlight + highlight.length,
          ),
          style: highlightStyle ??
              TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      );

      start = indexOfHighlight + highlight.length;
    }

    if (start < text.length) {
      spans.add(
        TextSpan(
          text: text.substring(start),
          style: style,
        ),
      );
    }

    return SelectableText.rich(
      TextSpan(
        style: DefaultTextStyle.of(context).style.copyWith(
              overflow: TextOverflow.ellipsis,
            ),
        children: spans,
      ),
      cursorColor: Theme.of(context).colorScheme.primary,
      showCursor: true,
      cursorHeight: 20,
    );
  }
}
