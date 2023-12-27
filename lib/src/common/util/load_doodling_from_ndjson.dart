import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:quick_path/src/common/data/data.dart';

Future<List<DoodlingModel>> loadDoodlingFromNdjson(String filePath) async {
  try {
    String assetContent = await rootBundle.loadString(filePath);

    // Parse the JSON content
    final List<dynamic> jsonList = LineSplitter.split(assetContent)
        .map((line) => json.decode(line))
        .toList();

    List<DoodlingModel> doodlings = jsonList.map((line) => DoodlingModel.fromJson(line)).toList();

    return doodlings;
  } on FileSystemException catch (e) {
    print("Error loading doodlings from $filePath: ${e.message}");
    return [];
  }
}
