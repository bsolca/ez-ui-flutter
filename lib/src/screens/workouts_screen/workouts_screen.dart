import 'dart:async';

import 'package:ez_fit_app/src/features/workout/controllers/workout_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout/workout_table.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// Screen that displays a list of workouts.
class WorkoutsScreen extends ConsumerStatefulWidget {
  /// Creates an instance of [WorkoutsScreen].
  const WorkoutsScreen({super.key});

  @override
  ConsumerState<WorkoutsScreen> createState() => _WorkoutsScreenState();
}

class _WorkoutsScreenState extends ConsumerState<WorkoutsScreen> {
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
    final workoutsStream = ref.watch(workoutListControllerProvider);

    return EzScaffoldBody(
      child: Column(
        children: [
          EzHeader.displayMedium(ref.loc.workouts),
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
              EzButton(
                // Navigate to the workout creation screen
                onPressed: () => context.goNamed(
                  AppRoute.workout.name,
                  pathParameters: {'id': 'new'},
                ),
                text: ref.loc.addWorkout,
              ),
            ].withSpaceBetween(
              width: EzConstLayout.spacer,
            ),
          ),
          Expanded(
            child: workoutsStream.when(
              data: (workouts) => WorkoutTable(
                workouts: workouts.where((w) {
                  bool isIn(String? value) =>
                      value?.toLowerCase().contains(
                            _searchText.toLowerCase(),
                          ) ??
                      false;
                  var isInTags = false;

                  if (w.tags != null) {
                    for (final tag in w.tags!) {
                      if (tag
                          .toLowerCase()
                          .contains(_searchText.toLowerCase())) {
                        isInTags = true;
                        break;
                      }
                    }
                  }

                  return isIn(w.name) || isIn(w.description) || isInTags;
                }).toList(),
                dataGridController: dataGridController,
                searchText: _searchText,
              ),
              loading: WorkoutTable.loading,
              error: (error, stack) => Center(child: Text('Error: $error')),
            ),
          ),
        ].withSpaceBetween(
          height: EzConstLayout.spacer,
        ),
      ),
    );
  }
}
