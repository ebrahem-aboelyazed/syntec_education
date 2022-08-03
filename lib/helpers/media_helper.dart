import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:palette_generator/palette_generator.dart';

class MediaHelper {
  MediaHelper._();

  static final MediaHelper _mediaHelper = MediaHelper._();

  static MediaHelper get instance => _mediaHelper;

  Future<Color> getImagePalette(String url) async {
    try {
      final paletteGenerator = await PaletteGenerator.fromImageProvider(
        CachedNetworkImageProvider(url),
      );
      return paletteGenerator.dominantColor!.color;
    } catch (e) {
      return Colors.black;
    }
  }
}
