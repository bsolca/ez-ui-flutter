import 'package:cached_network_image/cached_network_image.dart';
import 'package:ez_fit_app/src/shared/ez_file_uploader/ez_file_uploader.dart';
import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExerciseFormImage extends StatelessWidget {
  const ExerciseFormImage({
    super.key,
    required this.imageUrl,
    required this.onFilesSelected,
  });

  final String imageUrl;
  final void Function(List<PlatformFile>)? onFilesSelected;

  @override
  Widget build(BuildContext context) {
    if (imageUrl.isEmpty) {
      return Container(
        width: 200,
        height: 200,
        color: Colors.grey[300],
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        EzClipSmoothRect(
          child: CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (context, imageProvider) => EzFileUploader(
              onFilesSelected: onFilesSelected,
              child: Image(
                image: imageProvider,
              ),
            ),
            placeholder: (context, url) => Skeletonizer(
              child: Container(
                width: 200,
                height: 200,
                color: Colors.grey[300],
              ),
            ),
            errorListener: (reason) => logError(
              'Error loading image: $reason for $imageUrl',
              includeStackTrace: false,
            ),
            errorWidget: (context, url, error) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                EzFileUploader(
                  onFilesSelected: onFilesSelected,
                ),
                SelectableText(
                  'Error loading image:\n$url',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
