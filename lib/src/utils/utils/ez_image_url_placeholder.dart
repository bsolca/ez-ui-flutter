import 'dart:math';

class EzImageUrlPlaceholder {
  static const _baseUrl = 'https://fakeimg.pl/';
  static const _darkColors = [
    '000000', // Black
    '2C3E50', // Midnight Blue
    '34495E', // Wet Asphalt
    '7F8C8D', // Concrete
    '8E44AD', // Wisteria
    '2980B9', // Belize Hole
    '27AE60', // Nephritis
    '16A085', // Green Sea
    'F39C12', // Orange
    'D35400', // Pumpkin
    'C0392B', // Pomegranate
    'BDC3C7', // Silver
    '95A5A6', // Asbestos
    '7D3C98', // Amethyst
    '2471A3', // Azure
    '1E8449', // Emerald
    '148F77', // Teal
    'B9770E', // Dark Orange
    'A04000', // Dark Red
    '922B21', // Crimson
  ];

  static const _pastelColors = [
    'FFB3BA', // Light Red
    'FFDFBA', // Light Orange
    'FFFFBA', // Light Yellow
    'BAFFC9', // Light Green
    'BAE1FF', // Light Blue
    'D7BDE2', // Light Purple
    'FADBD8', // Light Pink
    'D5DBDB', // Light Gray
    'F5CBA7', // Light Peach
    'F9E79F', // Light Gold
    'A9DFBF', // Light Mint
    'AED6F1', // Light Sky Blue
    'D2B4DE', // Light Lavender
    'FAD7A0', // Light Apricot
    'F5B7B1', // Light Coral
    'D6DBDF', // Light Slate
    'F9E79F', // Light Mustard
    'A3E4D7', // Light Aqua
    'D5F5E3', // Light Seafoam
    'FDEDEC', // Light Blush
  ];

  static final _random = Random();

  static String generate({
    required int width,
    required int height,
    String text = '',
  }) {
    final bgColor = _darkColors[_random.nextInt(_darkColors.length)];
    final textColor = _pastelColors[_random.nextInt(_pastelColors.length)];
    final url = '$_baseUrl${width}x$height/$bgColor/$textColor?text=$text';
    return url;
  }
}
