// ignore_for_file: avoid_dynamic_calls

import 'package:impostor/src/utils/constants/const_dictionary.dart';
import 'package:impostor/src/utils/localization/app_local.codegen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dictionary.codegen.g.dart';

/// Dictionary word to store as a string on databases.
@riverpod
Map<String, String> dictionary(DictionaryRef ref) {
  final loc = ref.watch(appLocalProvider);

  return {
    ConstDictionary.lexBeverages: loc.lex_beverages,
    ConstDictionary.lexHotDrinks: loc.lex_hot_drinks,
    ConstDictionary.lexEuropeanCountries: loc.lex_european_countries,
    ConstDictionary.lexFruits: loc.lex_fruits,
    ConstDictionary.lexVehicles: loc.lex_vehicles,
    ConstDictionary.lexMusicalInstruments: loc.lex_musical_instruments,
    ConstDictionary.lexPublicTransportation: loc.lex_public_transportation,
    ConstDictionary.lexWheelers: loc.lex_wheelers,
    ConstDictionary.lexBakedGoods: loc.lex_baked_goods,
    ConstDictionary.lexFastFood: loc.lex_fast_food,
    ConstDictionary.lexBallGames: loc.lex_ball_games,
    ConstDictionary.lexNaturalEnvironments: loc.lex_natural_environments,
    ConstDictionary.lexAridEnvironments: loc.lex_arid_environments,
    ConstDictionary.lexVisualEntertainment: loc.lex_visual_entertainment,
    ConstDictionary.lexReadingMaterials: loc.lex_reading_materials,
    ConstDictionary.lexWearableTech: loc.lex_wearable_tech,
    ConstDictionary.lexComputingDevices: loc.lex_computing_devices,
    ConstDictionary.lexTransportation: loc.lex_transportation,
    ConstDictionary.lexPlanets: loc.lex_planets,
    ConstDictionary.lexCelestialBodies: loc.lex_celestial_bodies,
    ConstDictionary.lexDayParts: loc.lex_day_parts,
    ConstDictionary.lexSeasons: loc.lex_seasons,
    ConstDictionary.lexGrains: loc.lex_grains,
    ConstDictionary.lexHairstyle: loc.lex_hairstyle,
    ConstDictionary.lexDrinks: loc.lex_drinks,
    ConstDictionary.lexFurniture: loc.lex_furniture,
    ConstDictionary.lexMovies: loc.lex_movies,
    ConstDictionary.lexMaterials: loc.lex_materials,
    ConstDictionary.lexWeather: loc.lex_weather,
    ConstDictionary.lexSeaCreatures: loc.lex_sea_creatures,
    ConstDictionary.lexReptiles: loc.lex_reptiles,
    ConstDictionary.lexMedicalSpecialties: loc.lex_medical_specialties,
    ConstDictionary.lexScientificDisciplines: loc.lex_scientific_disciplines,
    ConstDictionary.lexHeadParts: loc.lex_head_parts,
    ConstDictionary.lexWarmClothing: loc.lex_warm_clothing,
    ConstDictionary.lexLuxuryBrands: loc.lex_luxury_brands,
    ConstDictionary.lexBoardGames: loc.lex_board_games,
    ConstDictionary.lexCosmetics: loc.lex_cosmetics,
    ConstDictionary.lexMonuments: loc.lex_monuments,
    ConstDictionary.lexDogBreeds: loc.lex_dog_breeds,
    ConstDictionary.lexSocialNetworks: loc.lex_social_networks,
    ConstDictionary.lexAppleProducts: loc.lex_apple_products,
    ConstDictionary.lexConsole: loc.lex_console,
    ConstDictionary.lexClothingBrands: loc.lex_clothing_brands,
    ConstDictionary.lexPedagogicalJobs: loc.lex_pedagogical_jobs,
    ConstDictionary.lexOldCommunications: loc.lex_old_communications,
  };
}