import 'dart:convert';
import 'dart:math';

import 'package:ez_fit_app/src/features/technique/data/technique_repository.codegen.dart';
import 'package:ez_fit_app/src/features/technique/model/technique_model.codegen.dart';
import 'package:ez_fit_app/src/utils/constants/ez_const_value.dart';
import 'package:flutter/services.dart';

class TechniqueRepositoryDummy implements TechniqueRepository {
  TechniqueRepositoryDummy();

  @override
  Future<TechniqueModel> getTechniqueById(String id) async {
    try {
      final techniques = await getTechniques();
      return techniques.firstWhere(
        (technique) => technique.id == id,
      );
    } catch (e) {
      throw Exception('Failed to load technique with id $id: $e');
    }
  }

  @override
  Future<List<TechniqueModel>> getTechniques() async {
    await Future<void>.delayed(EzConstValue.asyncDuration);
    try {
      final response = await rootBundle.loadString(
        'assets/dummy/techniques_dummy.json',
      );
      final data = jsonDecode(response);
      if (data is List<dynamic>) {
        return data.map((e) {
          if (e is Map<String, dynamic>) {
            return TechniqueModel.fromJson(e);
          }
          throw Exception('Invalid technique data');
        }).toList();
      }
      throw Exception('Invalid technique data');
    } catch (e) {
      throw Exception('Failed to load techniques dummy: $e');
    }
  }

  @override
  Future<void> deleteTechnique(String id) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();

    if (random.nextBool()) {
      final messages = [
        'Technique not found',
        'Failed due to network issues',
        'Insufficient permissions to delete',
        'Database error occurred',
        'Technique is locked and cannot be deleted',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }

  @override
  Future<void> updateTechnique(TechniqueModel technique) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();

    if (random.nextBool()) {
      final messages = [
        'Technique not found',
        'Invalid data format',
        'Update conflict detected',
        'Network error occurred',
        'Technique is locked and cannot be updated',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }

  @override
  Future<void> createTechnique(TechniqueModel technique) async {
    await Future<void>.delayed(const Duration(seconds: 1));
    final random = Random();
    if (random.nextBool()) {
      final messages = [
        'Name already exist',
        'Wrong image format',
        'Tags must not be empty',
        'Description must not be empty',
        'Image must be less than 5MB',
      ];
      throw Exception(messages[random.nextInt(messages.length)]);
    }
  }
}
