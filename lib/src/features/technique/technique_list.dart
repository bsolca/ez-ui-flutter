import 'dart:async';

import 'package:ez_fit_app/src/features/technique/controller/technique_list_controller.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/technique_table.dart';
import 'package:ez_fit_app/src/shared/ez_button/ez_button.dart';
import 'package:ez_fit_app/src/shared/ez_header/ez_header.dart';
import 'package:ez_fit_app/src/shared/ez_text_form_field/ez_text_form_field.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_layout.dart';
import 'package:ez_fit_app/src/utils/extension/list_extension.dart';
import 'package:ez_fit_app/src/utils/extension/widget_ref_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class TechniqueList extends ConsumerStatefulWidget {
  const TechniqueList({
    super.key,
    this.onAddTechnique,
    this.onCellTap,
  });

  final VoidCallback? onAddTechnique;
  final void Function(DataGridCellTapDetails, List<TechniqueModel>)? onCellTap;

  @override
  ConsumerState<TechniqueList> createState() => _TechniqueListState();
}

class _TechniqueListState extends ConsumerState<TechniqueList> {
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
    final techniquesStream = ref.watch(techniqueListControllerProvider);
    final onCellTap = widget.onCellTap;

    return Column(
      children: [
        EzHeader.displayMedium(ref.loc.techniques),
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
            if (widget.onAddTechnique != null)
              EzButton(
                // Navigate to the technique creation screen
                onPressed: widget.onAddTechnique,
                text: ref.loc.addTechnique,
              ),
          ].withSpaceBetween(
            width: EzConstLayout.spacer,
          ),
        ),
        Expanded(
          child: techniquesStream.when(
            data: (techniques) => TechniqueTable(
              techniques: techniques.where((e) {
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
              onCellTap: onCellTap,
              searchText: _searchText,
            ),
            loading: TechniqueTable.loading,
            error: (error, stack) => Center(child: Text('Error: $error')),
          ),
        ),
      ].withSpaceBetween(
        height: EzConstLayout.spacer,
      ),
    );
  }
}
