import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/widgets/technique_form_delete_button.dart';
import 'package:ez_fit_app/src/features/technique/widgets/technique_form_image_url.dart';
import 'package:ez_fit_app/src/features/technique/widgets/technique_form_save_button.dart';
import 'package:ez_fit_app/src/screens/technique_screen/technique_screen_get_technique_controller.codegen.dart';
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

class TechniqueForm extends ConsumerStatefulWidget {
  const TechniqueForm({
    super.key,
    required this.techniqueId,
  });

  final String techniqueId;

  @override
  ConsumerState<TechniqueForm> createState() => _TechniqueFormState();
}

class _TechniqueFormState extends ConsumerState<TechniqueForm> {
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final imageUrlController = TextEditingController();
  final videoUrlController = TextEditingController();
  final descriptionController = TextEditingController();
  final tagsController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool loadingData = false;
  bool loadingMethod = false;
  String tmpImageUrl = '';

  @override
  void initState() {
    final getTechniqueController = ref.read(
      techniquesScreenGetTechniqueControllerProvider(widget.techniqueId),
    );
    final loadTechnique = getTechniqueController;

    super.initState();

    // if loadTechnique is null then no need to load data
    if (loadTechnique != null) {
      setState(() => loadingData = true);
      loadTechnique().then((value) {
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
    return Form(
      key: formKey,
      child: ListView(
        shrinkWrap: true,
        children: [
          EzHeader.displayMedium(ref.loc.techniqueFormHeader),
          EzFormItemLayout(
            itemLabel: ref.loc.techniqueFormName,
            itemDescription: ref.loc.techniqueFormNameDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.techniqueFormNameHint,
                controller: nameController,
                validator: (v) {
                  return v?.isNotEmpty ?? false ? null : ref.loc.required;
                },
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.techniqueFormTags,
            itemDescription: ref.loc.techniqueFormTagsDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.techniqueFormTagsHint,
                controller: tagsController,
              ),
            ),
          ),
          EzFormItemLayout(
            itemLabel: ref.loc.techniqueFormDescription,
            itemDescription: ref.loc.techniqueFormDescriptionDescription,
            child: Skeletonizer(
              enabled: loadingData,
              child: EzTextFormField(
                hintText: ref.loc.techniqueFormDescriptionHint,
                controller: descriptionController,
                maxLines: 3,
              ),
            ),
          ),
          EzHeader.displayMedium(ref.loc.techniqueFormMediaHeader),
          EzFormItemLayout(
            itemLabel: ref.loc.techniqueFormImage,
            child: Skeletonizer(
              enabled: loadingData,
              child: TechniqueFormImage(
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
            itemLabel: ref.loc.techniqueFormVideo,
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
          TechniqueFormSaveButton(
            formKey: formKey,
            isDisabled: loadingData,
            TechniqueModel(
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
          if (widget.techniqueId.isNotEmpty && widget.techniqueId != 'new')
            TechniqueFormDeleteButton(
              isDisabled: loadingData,
              techniqueId: widget.techniqueId,
              techniqueName: nameController.text,
            ),
        ].withSpaceBetween(height: EzConstLayout.spacerSmall),
      ),
    );
  }
}
