import 'package:ez_fit_app/src/shared/ez_squircle/ez_squircle.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/log/logger.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:super_drag_and_drop/super_drag_and_drop.dart';

/// A file uploader widget.
class EzFileUploader extends StatefulWidget {
  /// A file uploader widget.
  const EzFileUploader({
    super.key,
    this.onFilesSelected,
    this.child,
  });

  /// Called when files are selected
  final void Function(List<PlatformFile> files)? onFilesSelected;

  final Widget? child;

  @override
  State<EzFileUploader> createState() => _EzFileUploaderState();
}

class _EzFileUploaderState extends State<EzFileUploader> {
  List<PlatformFile> selectedFiles = [];

  Future<void> pickFiles() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFiles
          ..clear()
          ..addAll(result.files);
        logAction('File picked: "${selectedFiles.first.name}"');
        widget.onFilesSelected?.call(selectedFiles);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final child = widget.child;
    final onFilesSelected = widget.onFilesSelected;

    return DropRegion(
      formats: Formats.standardFormats,
      hitTestBehavior: HitTestBehavior.opaque,
      onDropOver: (event) {
        if (event.session.allowedOperations.contains(DropOperation.copy)) {
          return DropOperation.copy;
        } else {
          return DropOperation.none;
        }
      },
      onPerformDrop: (event) async {
        final itemName =
            await event.session.items.first.dataReader?.getSuggestedName();
        logAction('File picked: "$itemName"');
      },
      child: InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: onFilesSelected == null ? null : pickFiles,
        child: child ?? Container(
          margin: const EdgeInsets.all(1),
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: ShapeDecoration(
            shape: EzSmoothRectangleBorder(
              side: BorderSide(color: Theme.of(context).colorScheme.outline),
              borderRadius: EzSmoothBorderRadius(
                cornerRadius: EzConstLayout.borderRadius,
                cornerSmoothing: EzConstLayout.cornerSmoothing,
              ),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.cloud_upload,
                size: 48,
                color: Colors.grey,
              ),
              const Text(
                textAlign: TextAlign.center,
                'Drop your file here or browse',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const Text(
                'Pick a photo up to 2MB.',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ].withSpaceBetween(
              height: EzConstLayout.spacerSmall,
            ),
          ),
        ),
      ),
    );
  }
}
