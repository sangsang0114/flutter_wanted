import 'package:dio_example/model/model_object.dart';
import 'package:dio_example/repository/object_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeScreenProvider = FutureProvider<List<ModelObject>>((ref) async {
  final repository = ref.read(objectRepositoryProvider);
  final list = await repository.getObjects();

  return list;
});
