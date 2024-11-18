import 'dart:async';

import 'package:ez_fit_app/src/features/exercise/controller/exercise_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/exercise/exercise_table.dart';
import 'package:ez_fit_app/src/features/exercise/model/exercise_model.codegen.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ExerciseList extends ConsumerStatefulWidget {
  const ExerciseList({
    super.key,
    this.onAddExercise,
    this.onCellTap,
  });

  final VoidCallback? onAddExercise;
  final void Function(DataGridCellTapDetails, List<ExerciseModel>)? onCellTap;

  @override
  ConsumerState<ExerciseList> createState() => _ExerciseListState();
}

class _ExerciseListState extends ConsumerState<ExerciseList> {
  final dataGridController = DataGridController();
  final searchController = TextEditingController();
  Timer? _debounce;
  String _searchText = '';

  @override
  void initState() {
    super.initState();
    searchController.addListener(_onSearchChanged);
  }

  @override
  void dispose() {
    _debounce?.cancel();
    searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () {
      setState(() {
        _searchText = searchController.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final exercisesStream = ref.watch(exerciseListControllerProvider);
    final onCellTap = widget.onCellTap;

    return Column(
      children: [
        EzHeader.displayMedium(ref.loc.exercises),
        Row(
          children: [
            Expanded(
              child: EzTextFormField(
                hintText: ref.loc.search,
                controller: searchController,
                isClearable: true,
                onEditingComplete: () {},
              ),
            ),
            if (widget.onAddExercise != null)
              EzButton(
                // Navigate to the exercise creation screen
                onPressed: widget.onAddExercise,
                text: ref.loc.addExercise,
              ),
          ].withSpaceBetween(
            width: EzConstLayout.spacer,
          ),
        ),
        Expanded(
          child: exercisesStream.when(
            data: (exercises) => ExerciseTable(
              exercises: exercises.where((e) {
                bool isIn(String? value) =>
                    value?.toLowerCase().contains(
                          _searchText.toLowerCase(),
                        ) ??
                    false;

                return isIn(e.name) ||
                    isIn(e.description) ||
                    e.tags.any(
                      (tag) => tag.toLowerCase().contains(
                            _searchText.toLowerCase(),
                          ),
                    );
              }).toList(),
              dataGridController: dataGridController,
              onCellTap: onCellTap == null
                  ? null
                  : (details) {
                      onCellTap(details, exercises);
                    },
              searchText: _searchText,
            ),
            loading: ExerciseTable.loading,
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ].withSpaceBetween(
        height: EzConstLayout.spacer,
      ),
    );
  }
}
