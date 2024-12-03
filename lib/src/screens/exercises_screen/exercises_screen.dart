import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/features/technique/technique_list.dart';
import 'package:ez_fit_app/src/shared/ez_scaffold_body/ez_scaffold_body.dart';
import 'package:ez_fit_app/src/utils/routing/go_router_provider.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

/// Screen that displays a list of techniques.
class TechniquesScreen extends ConsumerStatefulWidget {
  /// Creates an instance of [TechniquesScreen].
  const TechniquesScreen({super.key});

  @override
  ConsumerState<TechniquesScreen> createState() => _TechniquesScreenState();
}

class _TechniquesScreenState extends ConsumerState<TechniquesScreen> {
  @override
  Widget build(BuildContext context) {
    return EzScaffoldBody(
      child: TechniqueList(
        onAddTechnique: () => context.goNamed(
          AppRoute.technique.name,
          pathParameters: {'id': 'new'},
        ),
        onCellTap: (
          DataGridCellTapDetails details,
          List<TechniqueModel> techniques,
        ) {
          if (details.rowColumnIndex.rowIndex > 0) {
            final rowIndex = details.rowColumnIndex.rowIndex - 1;
            if (rowIndex < techniques.length) {
              final technique = techniques[rowIndex];
              final techniqueId = technique.id;

              context.goNamed(
                AppRoute.technique.name,
                pathParameters: {'id': techniqueId},
              );
            }
          }
        },
      ),
    );
  }
}
