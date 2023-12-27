import 'package:quick_path/src/common/common.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'doodling_provider.g.dart';

@riverpod
Future<List<DoodlingModel>> loadDoodlings(LoadDoodlingsRef ref) async {
  return loadDoodlingFromNdjson(kAntDoodlingPaths);
}
