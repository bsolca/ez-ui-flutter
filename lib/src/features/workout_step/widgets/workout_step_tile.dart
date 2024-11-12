import 'package:ez_fit_app/src/features/workout_step/controllers/workout_steps_controller.codegen.dart';
import 'package:ez_fit_app/src/features/workout_step/model/workout_step_model.codegen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WorkoutStepTile extends ConsumerWidget {
  const WorkoutStepTile({
    super.key,
    required this.step,
    required this.workoutId,
  });

  final WorkoutStepModel step;
  final String workoutId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ExpansionTile(
      title: Text(step.name),
      subtitle: Text(step.description ?? ''),
      controlAffinity: ListTileControlAffinity.leading,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
              // Add edit functionality, e.g., open a dialog to edit the step
              ref
                  .read(
                    workoutStepsControllerProvider(workoutId).notifier,
                  )
                  .editStep(
                    step.copyWith(
                      name: 'Updated Name',
                    ), // Example update
                  );
            },
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {
              ref
                  .read(
                    workoutStepsControllerProvider(workoutId).notifier,
                  )
                  .removeStep(step.id);
            },
          ),
        ],
      ),
      children: const <Widget>[
        ListTile(title: Text('This is tile number 3')),
      ],
    );
  }
}
