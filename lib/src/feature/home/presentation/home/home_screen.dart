import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:quick_path/src/common/common.dart';
import 'package:quick_path/src/feature/draw_path_canvas/draw_path_canvas.dart';
import 'package:quick_path/src/feature/home/notifiers/doodling_provider.dart';

class HomeScreen extends StatefulHookConsumerWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  List<DoodlingModel> doodlings = [];

  void randomlySelectDoodling() {
    doodlings.shuffle();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      doodlings = await loadDoodlingFromNdjson(kAntDoodlingPaths);
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    final AsyncValue<List<DoodlingModel>> drawings = ref.watch(loadDoodlingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(context.l10n!.appTitle),
        centerTitle: true,
        actions: [
          /*switch (drawings) {
            AsyncData(:final value) => Text(value.length.toString()),
            AsyncError() => const Text("🫤"),
            _ => const SizedBox(
              width: 20,
              height: 20,
              child: CircularProgressIndicator(strokeWidth: 3),
            ),
          },*/
          Text(doodlings.length.toString()),
          const Gap(20),
        ],
      ),
      body: Column(
        children: [
          // canvas
          SizedBox(
            height: context.height - context.padding.top - AppBar().preferredSize.height - context.heightScale(scale: .1),
            // color: context.theme.primaryColor,
            child: doodlings.isNotEmpty ? CanvasScreen(doodlingModel: doodlings.first) : const SizedBox(),
          ),
          // generate new path button
          Container(
            width: context.width,
            height: context.heightScale(scale: .1),
            padding: const EdgeInsets.all(20),
            // color: Colors.red,
            child: ElevatedButton.icon(
              onPressed: () => randomlySelectDoodling(),
              icon: const Icon(Icons.draw_rounded),
              label: Text(context.l10n!.drawPath),
            ),
          ),
        ],
      ),
    );
  }
}
