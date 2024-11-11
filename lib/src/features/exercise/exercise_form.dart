import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/widgets/exercise_form_delete_button.dart';
import 'package:ez_fit_app/src/features/exercise/widgets/exercise_form_image_url.dart';
import 'package:ez_fit_app/src/features/exercise/widgets/exercise_form_save_button.dart';
import 'package:ez_fit_app/src/screens/exercise_screen/exercises_screen_get_exercise_controller.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_file_uploader/ez_file_uploader.dart';
import 'package:ez_fit_app/src/shared/ez_form/ez_form_item_layout/ez_form_item_layout.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:ez_fit_app/src/utils/utils/ez_image_url_placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ExerciseForm extends ConsumerStatefulWidget {
  const ExerciseForm({
    super.key,
    required this.exerciseId,
  });

  final String exerciseId;

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
  bool loadingData = false;
  bool loadingMethod = false;
  String tmpImageUrl = '';

  @override
  void initState() {
    final getExerciseController = ref.read(
      exercisesScreenGetExerciseControllerProvider(widget.exerciseId),
    );
    final loadExercise = getExerciseController;

    super.initState();

    // if loadExercise is null then no need to load data
    if (loadExercise != null) {
      setState(() => loadingData = true);
      loadExercise().then((value) {
        if (value != null) {
          idController.text = value.id;
          nameController.text = value.name;
          imageUrlController.text = value.imageUrl ?? '';
          videoUrlController.text = value.videoUrl ?? '';
          descriptionController.text = value.description;
          tagsController.text = value.tags.join(', ');
          tmpImageUrl = EzImageUrlPlaceholder.generate(
            text: nameController.text,
            width: 200,
            height: 200,
          );
        }
        setState(() => loadingData = false);
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
            enabled: loadingData,
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
            enabled: loadingData,
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
            enabled: loadingData,
            child: EzTextFormField(
              hintText: ref.loc.exerciseFormDescriptionHint,
              controller: descriptionController,
              maxLines: 3,
            ),
          ),
        ),
        EzHeader.displayMedium(ref.loc.exerciseFormMediaHeader),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormImage,
          child: Skeletonizer(
            enabled: loadingData,
            child: ExerciseFormImage(
              // NOTE: We use fake image instead of
              // imageUrl: imageUrlController.text,
              imageUrl: tmpImageUrl,
              onFilesSelected: (files) {
                if (files.isNotEmpty) {
                  imageUrlController.text = '${files.first.path}';
                }
              },
            ),
          ),
        ),
        EzFormItemLayout(
          itemLabel: ref.loc.exerciseFormVideo,
          child: Skeletonizer(
            enabled: loadingData,
            child: EzFileUploader(
              onFilesSelected: (files) {
                if (files.isNotEmpty) {
                  videoUrlController.text = '${files.first.path}';
                }
              },
            ),
          ),
        ),
        ExerciseFormSaveButton(
          ExerciseModel(
            id: idController.text,
            name: nameController.text,
            imageUrl: imageUrlController.text.isNotEmpty
                ? imageUrlController.text
                : null,
            videoUrl: videoUrlController.text.isNotEmpty
                ? videoUrlController.text
                : null,
            tags: tagsController.text
                .split(',')
                .map((tag) => tag.trim())
                .toList(),
            description: descriptionController.text,
          ),
        ),
        ExerciseFormDeleteButton(
          exerciseId: widget.exerciseId,
          exerciseName: nameController.text,
        ),
      ].withSpaceBetween(height: EzConstLayout.spacerSmall),
    );
  }
}
