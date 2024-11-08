import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_file_uploader/ez_file_uploader.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExerciseForm extends ConsumerStatefulWidget {
  const ExerciseForm({
    super.key,
    required this.loadExercise,
    required this.onSave,
  });

  final Future<ExerciseModel?> Function()? loadExercise;
  final Future<void> Function(ExerciseModel) onSave;

  @override
  ConsumerState<ExerciseForm> createState() => _ExerciseFormState();
}

class _ExerciseFormState extends ConsumerState<ExerciseForm> {
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final imageUrlController = TextEditingController();
  final videoUrlController = TextEditingController();
  final descriptionController = TextEditingController();
  final tagsController = TextEditingController();
  late Future<void> Function() saveExercise;
  bool loading = false;

  @override
  void initState() {
    final loadExercise = widget.loadExercise;
    saveExercise = () async {
      final newExercise = ExerciseModel(
        id: idController.text,
        name: nameController.text,
        imageUrl:
            imageUrlController.text.isNotEmpty ? imageUrlController.text : null,
        videoUrl:
            videoUrlController.text.isNotEmpty ? videoUrlController.text : null,
        tags: tagsController.text.split(',').map((tag) => tag.trim()).toList(),
        description: descriptionController.text,
      );

      await widget.onSave(newExercise);
      // Handle save action (e.g., save to database or state)
      // Add your save logic here
    };

    super.initState();

    // if loadExercise is null then no need to load data
    if (loadExercise != null) {
      setState(() => loading = true);
      loadExercise().then((value) {
        if (value != null) {
          nameController.text = value.name;
          imageUrlController.text = value.imageUrl ?? '';
          videoUrlController.text = value.videoUrl ?? '';
          descriptionController.text = value.description;
          tagsController.text = value.tags.join(', ');
        }
        setState(() => loading = false);
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      shrinkWrap: true,
      children: [
        EzHeader.displayMedium(ref.loc.exerciseFormHeader),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormName,
          itemDescription: ref.loc.exerciseFormNameDescription,
          child: Skeletonizer(
            enabled: loading,
            child: EzTextFormField(
              hintText: ref.loc.exerciseFormNameHint,
              controller: nameController,
            ),
          ),
        ),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormTags,
          itemDescription: ref.loc.exerciseFormTagsDescription,
          child: Skeletonizer(
            enabled: loading,
            child: EzTextFormField(
              hintText: ref.loc.exerciseFormTagsHint,
              controller: tagsController,
            ),
          ),
        ),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormDescription,
          itemDescription: ref.loc.exerciseFormDescriptionDescription,
          child: Skeletonizer(
            enabled: loading,
            child: EzTextFormField(
              hintText: ref.loc.exerciseFormDescriptionHint,
              controller: descriptionController,
              maxLines: 3,
            ),
          ),
        ),
        EzHeader.displayMedium(ref.loc.exerciseFormMediaHeader),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormImageUrl,
          child: Skeletonizer(
            enabled: loading,
            child: EzFileUploader(
              onFilesSelected: (files) {
                if (files.isNotEmpty) {
                  imageUrlController.text = '${files.first.path}';
                }
              },
            ),
          ),
        ),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormVideoUrl,
          child: Skeletonizer(
            enabled: loading,
            child: EzFileUploader(
              onFilesSelected: (files) {
                if (files.isNotEmpty) {
                  videoUrlController.text = '${files.first.path}';
                }
              },
            ),
          ),
        ),
        EzButton(
          onPressed: loading ? null : saveExercise,
          text: ref.loc.save,
        ),
      ].withSpaceBetween(height: EzConstLayout.spacerSmall),
    );
  }
}
