import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:quick_path/src/common/data/data.dart';

Future<List<DoodlingModel>> loadDoodlingFromNdjson(String filePath) async {
  try {
    String assetContent = await rootBundle.loadString(filePath);

    // Parse the JSON content
    final List<DoodlingModel> doodlings = LineSplitter.split(assetContent).map((line) {
      final jsonMap = json.decode(line);
      return DoodlingModel.fromJson(jsonMap);
    }).toList();

    return doodlings;
  } on FileSystemException catch (e) {
    print("Error loading doodlings from $filePath: ${e.message}");
    return [];
  }
}
